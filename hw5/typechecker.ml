open Ast
open Astlib
open Tctxt

(* Error Reporting ---------------------------------------------------------- *)
(* NOTE: Use type_error to report error messages for ill-typed programs. *)

exception TypeError of string

let type_error (l : 'a node) (err : string) = 
  let (_, (s, e), _) = l.loc in
  raise (TypeError (Printf.sprintf "[%d, %d] %s" s e err))

let pp = Printf.sprintf

(* initial context: G0 ------------------------------------------------------ *)
(* The Oat types of the Oat built-in functions *)
let builtins =
  [ "array_of_string",  ([TRef RString],  RetVal (TRef(RArray TInt)))
  ; "string_of_array",  ([TRef(RArray TInt)], RetVal (TRef RString))
  ; "length_of_string", ([TRef RString],  RetVal TInt)
  ; "string_of_int",    ([TInt], RetVal (TRef RString))
  ; "string_cat",       ([TRef RString; TRef RString], RetVal (TRef RString))
  ; "print_string",     ([TRef RString],  RetVoid)
  ; "print_int",        ([TInt], RetVoid)
  ; "print_bool",       ([TBool], RetVoid)
  ]

(* binary operation types --------------------------------------------------- *)
let typ_of_binop : Ast.binop -> Ast.ty * Ast.ty * Ast.ty = function
  | Add | Mul | Sub | Shl | Shr | Sar | IAnd | IOr -> (TInt, TInt, TInt)
  | Lt | Lte | Gt | Gte -> (TInt, TInt, TBool)
  | And | Or -> (TBool, TBool, TBool)
  | Eq | Neq -> failwith "typ_of_binop called on polymorphic == or !="

(* unary operation types ---------------------------------------------------- *)
let typ_of_unop : Ast.unop -> Ast.ty * Ast.ty = function
  | Neg | Bitnot -> (TInt, TInt)
  | Lognot       -> (TBool, TBool)

(* subtyping ---------------------------------------------------------------- *)
(* Decides whether H |- t1 <: t2 
    - assumes that H contains the declarations of all the possible struct types

    - you will want to introduce additional (possibly mutually recursive) 
      helper functions to implement the different judgments of the subtyping
      relation. We have included a template for subtype_ref to get you started.
      (Don't forget about OCaml's 'and' keyword.)
*)

let rec subtype (c : Tctxt.t) (t1 : Ast.ty) (t2 : Ast.ty) : bool =
  match t1, t2 with
  | TBool, TBool | TInt, TInt -> true
  | TRef(refty), TRef(refty2) 
  | TRef(refty), TNullRef(refty2) 
  | TNullRef(refty), TNullRef(refty2) -> subtype_ref c refty refty2
  | _ -> false

(* Decides whether H |-r ref1 <: ref2 *)
and subtype_ref (c : Tctxt.t) (ref1 : Ast.rty) (ref2 : Ast.rty) : bool =
  match ref1, ref2 with
  | RString, RString -> true
  | RArray ar, RArray ar2 -> ar = ar2
  | RStruct stct, RStruct stct2 -> subtype_stct c stct stct2
  | RFun(args, ret), RFun(args2, ret2) -> subtype_fun c args ret args2 ret2
  | _ -> false

(* Decides whether H |-r ret_ty1 <: ret_ty2 *)
and subtype_retty (c: Tctxt.t) (rty1: Ast.ret_ty) (rty2: Ast.ret_ty) : bool =
  match rty1, rty2 with
  | RetVal(ty1), RetVal(ty2) -> subtype c ty1 ty2
  | RetVoid, RetVoid -> true
  | _ -> false

(* Decides whether H |-r struct1 <: struct2 *)
and subtype_stct (c: Tctxt.t) (stct1: Ast.id) (stct2: Ast.id) : bool = stct1 = stct2 ||
  match Tctxt.lookup_struct_option stct2 c with
  | None -> false
  | Some stct2_fields -> List.fold_left (fun acc f0 -> acc && 
      let res = Tctxt.lookup_field_option stct1 f0.fieldName c in
      match res with
      | None -> false
      | Some fty -> fty = f0.ftyp
  ) true stct2_fields

(* Decides whether H |-r func1 <: func2 *)
and subtype_fun (c: Tctxt.t) 
                (args1: Ast.ty list) 
                (r1: Ast.ret_ty) 
                (args2: Ast.ty list) 
                (r2: Ast.ret_ty) : bool =
  let pred_args = List.length args1 = List.length args2 in
  let pred_args = pred_args && List.fold_left2(fun acc arg1 arg2 ->
                              acc && subtype c arg1 arg2
                              ) true args1 args2 in
  let pred_ret = subtype_retty c r1 r2 in
  pred_args && pred_ret



(* well-formed types -------------------------------------------------------- *)
(* Implement a (set of) functions that check that types are well formed according
   to the H |- t and related inference rules

    - the function should succeed by returning () if the type is well-formed
      according to the rules

    - the function should fail using the "type_error" helper function if the 
      type is not well formed

    - l is just an ast node that provides source location information for
      generating error messages (it's only needed for the type_error generation)

    - tc contains the structure definition context
 *)
let rec typecheck_ty (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.ty) : unit =
  match t with
  | TInt | TBool -> ()
  | TRef(refty) | TNullRef(refty) -> typecheck_refty l tc refty

and typecheck_refty (l: 'a Ast.node) (tc: Tctxt.t) (refty: Ast.rty) : unit =
  match refty with
  | RString -> ()
  | RArray ar -> typecheck_ty l tc ar
  | RStruct stct -> (
      match lookup_struct_option stct tc with
      | None -> type_error l 
          (pp "[typecheck_ref_ty]: 
          undefined struct %s" stct)
      | Some _ -> ())
  | RFun(args, ret) -> (List.iter(fun f1 -> typecheck_ty l tc f1) args;
      typecheck_retty l tc ret)

and typecheck_retty (l: 'a Ast.node) (tc: Tctxt.t) (rty: Ast.ret_ty) : unit =
  match rty with
  | RetVoid -> ()
  | RetVal rty1 -> typecheck_ty l tc rty1


(* A helper function to determine whether a type allows the null value *)
let is_nullable_ty (t : Ast.ty) : bool =
  match t with
  | TNullRef _ -> true
  | _ -> false

(* typechecking expressions ------------------------------------------------- *)
(* Typechecks an expression in the typing context c, returns the type of the
   expression.  This function should implement the inference rules given in the
   oat.pdf specification.  There, they are written:

       H; G; L |- exp : t

   See tctxt.ml for the implementation of the context c, which represents the
   four typing contexts: H - for structure definitions G - for global
   identifiers L - for local identifiers

   Returns the (most precise) type for the expression, if it is type correct
   according to the inference rules.

   Uses the type_error function to indicate a (useful!) error message if the
   expression is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   Notes: - Structure values permit the programmer to write the fields in any
   order (compared with the structure definition).  This means that, given the
   declaration struct T { a:int; b:int; c:int } The expression new T {b=3; c=4;
   a=1} is well typed.  (You should sort the fields to compare them.)

*)
let rec typecheck_exp (c : Tctxt.t) (e : Ast.exp node) : Ast.ty =
  match e.elt with
  | CNull(rty) -> (typecheck_refty e c rty;
      TNullRef(rty))
  | CBool b -> TBool
  | CInt i -> TInt
  | CStr s -> TRef(RString)
  | Id stct -> (
      match Tctxt.lookup_option stct c with
      | None -> type_error e 
          (pp "[typecheck_ref_ty]: 
          undefined struct %s" stct)
      | Some sty -> sty)
  | CArr(arrty, exps) -> (typecheck_ty e c arrty;
      let expty = List.map(fun f2 -> typecheck_exp c f2) exps in
      let pred_init = 
          List.fold_left (fun acc f3 -> acc && subtype c f3 arrty) true expty in
      match pred_init with
      | true -> TRef(RArray(arrty))
      | false -> type_error e 
          "[typecheck_exp][CArr]: 
          unexpected array element type")
  | Index(arr, ind) -> (let indty = typecheck_exp c ind in
      let arrty = typecheck_exp c arr in
      match arrty, indty with
      | TRef(RArray(typ)), TInt -> typ
      | TRef(RArray(_)), typ -> type_error e (pp 
          "[typecheck_exp][Index]: expected 
          an index of type Int but 
          found a %s" @@ string_of_ty typ)
      | typ, TInt -> type_error e (pp
          "[typecheck_exp][Index]: expected an 
          expression of type TRef(TArray(t)) 
          but it found a %s" @@ string_of_ty typ)
      | _, _ -> type_error e (pp 
          "both the array expression and the 
          index are mistyped"))
  | Length(arr) -> (let arrty = typecheck_exp c arr in
      match arrty with
      | TRef(RArray(_)) -> TInt
      | typ -> type_error e (pp 
          "[typecheck_exp][Index]: expected 
          an index of type Int but found a %s" 
          @@ string_of_ty typ))
  | NewArr(typ, node) -> (typecheck_ty e c typ;
      let expty = typecheck_exp c node in
      match expty with
      | TBool | TInt -> TRef(RArray(typ))
      | TNullRef(rty) -> TNullRef(RArray(typ))
      | _ -> type_error e (pp 
          "[typecheck_exp][NewArr]: 
          encountered an unexpected 
          array type"))
  | NewArrInit(typ, len, id, init) -> (typecheck_ty e c typ;
      let pred_len = typecheck_exp c len = TInt in
      let pred_id = (
          match Tctxt.lookup_local_option id c with
          | None -> true
          | Some _ -> false) in
      let initty = typecheck_exp (Tctxt.add_local c id TInt) init in
      let pred_init = subtype c initty typ in
      match pred_len, pred_id, pred_init with
      | true, true, true -> TRef(RArray(typ))
      | false, _, _ -> type_error e 
          (pp "[typecheck_exp][NewArrInit]: 
          expected a length of type Int")
      | _, false, _ -> type_error e 
          (pp "[typecheck_exp][NewArrInit]: 
          array init identifier [%s] is 
          defined in the local context" id)
      | _, _, false -> type_error e (pp 
          "both the array expression and the 
          index are mistyped"))
  | CStruct (stct_id, fields) -> (
      let pred_fields_subtype = 
          List.fold_left(fun acc (f4_id, f4_initexp) -> 
          acc && let f4_initty = typecheck_exp c f4_initexp in
          match Tctxt.lookup_field_option stct_id f4_id c with
          | None -> false
          | Some fty -> subtype c f4_initty fty
      ) true fields in
      let stct_exp_fields = Tctxt.lookup_struct stct_id c in
      let pred_present_fields = List.fold_left(fun acc f5 ->
          acc && List.exists (fun (id, _) -> id = f5.fieldName) fields
      ) true stct_exp_fields in
      let pred_len_field_list = List.length stct_exp_fields = List.length fields in
      match pred_fields_subtype, pred_present_fields, pred_len_field_list with
      | true, true, true -> TRef(RStruct stct_id)
      | false, _, _ -> type_error e 
          "[typecheck_exp][CStruct]: expression 
          does not have the correct field type"
      | _, false, _ -> type_error e 
          "[typecheck_exp][CStruct]: Possible 
          uninitialized struct field"
      | _, _, false -> type_error e 
          "[typecheck_exp][CStruct]: Trying to
          initialize duplicate struct fields")
  | Proj(stct, field_id) -> (let stctty = typecheck_exp c stct in
      match stctty with
      | TRef(RStruct (stct_id)) -> (
          let fieldty = Tctxt.lookup_field_option stct_id field_id c in
          match fieldty with
          | Some typ -> typ
          | None -> type_error e 
              (pp "[typecheck_exp][Proj]: 
              undefined field %s" field_id))
      | typ -> type_error e (pp 
          "[typecheck_exp][Proj]: expected an 
          expression of type struct but it 
          received a %s" @@ string_of_ty typ))
  | Call (fun_id, args) -> (
      let args2, retty = (
          match typecheck_exp c fun_id with
          | TNullRef(RFun(arg, rty)) 
          | TRef(RFun(arg, rty)) -> arg, rty
          | typ -> type_error e (pp 
              "[typecheck_exp][Call]: an identifier 
              of type %s is not a well-defined 
              function" @@ string_of_ty typ)) in
      let argty = List.map(fun f6 -> typecheck_exp c f6) args in
      let pred_arglen = List.length args2 = List.length args in
      match pred_arglen with
      | false -> type_error e 
          "[typecheck_exp][Call]: unexpected 
          number of arguments"
      | true -> (
          let pred_argty = List.fold_left2(fun acc args2 f7 ->
              acc && subtype c f7 args2) true args2 argty in
          match pred_argty, retty with
          | true, RetVal(rty) -> rty
          | false, _ -> type_error e 
              "[typecheck_exp][Call]: encountered 
              unexpected argument types in function call"
          | _, RetVoid -> type_error e 
              "[typecheck_exp][Call]: encountered 
              unexpected void return type"))
  | Bop (Neq, l, r) | Bop (Eq, l, r) -> (
      let leftty = typecheck_exp c l in
      let rightty = typecheck_exp c r in
      match (subtype c leftty rightty), (subtype c rightty leftty) with
      | true, true -> TBool
      | false, _ -> type_error e (pp 
          "[typecheck_exp][Bop]: the left operand of 
          type %s is not a subtype of the right operand 
          of type %s" (string_of_ty leftty) (string_of_ty 
          rightty))
      | _, false -> type_error e (pp 
          "[typecheck_exp][Bop]: the right operand of 
          type %s is not a subtype of the left operand 
          of type %s" (string_of_ty rightty) (string_of_ty 
          leftty)))
  | Bop (biop, l, r) -> (
      let leftty, rightty, retty = typ_of_binop biop in
      let pred_l = typecheck_exp c l  = leftty in
      let pred_r = typecheck_exp c r = rightty in 
      match pred_l, pred_r with
      | true, true -> retty
      | false, _ -> type_error e 
          (pp "[typecheck_exp][Bop]: expected left 
          operand to have type %s" @@ string_of_ty 
          leftty)
      | _, false -> type_error e 
          (pp "[typecheck_exp][Bop]: expected right 
          operand to have type %s" @@ string_of_ty 
          rightty))
  | Uop (u, exp) -> (
      let expty, retty = typ_of_unop u in
      let pred_exp = typecheck_exp c exp = expty in
      match pred_exp with
      | true -> retty
      | false -> type_error e (pp 
          "[typecheck_exp][Uop]: expected a operand 
          of type %s" @@ string_of_ty expty))

(* statements --------------------------------------------------------------- *)

(* Typecheck a statement 
   This function should implement the statment typechecking rules from oat.pdf.  

   Inputs:
    - tc: the type context
    - s: the statement node
    - to_ret: the desired return type (from the function declaration)

   Returns:
     - the new type context (which includes newly declared variables in scope
       after this statement)

     - A boolean indicating the return behavior of a statement:
        false:  might not return
        true: definitely returns 

        in the branching statements, the return behavior of the branching 
        statement is the conjunction of the return behavior of the two 
        branches: both both branches must definitely return in order for 
        the whole statement to definitely return.

        Intuitively: if one of the two branches of a conditional does not 
        contain a return statement, then the entire conditional statement might 
        not return.
  
        looping constructs never definitely return 

   Uses the type_error function to indicate a (useful!) error message if the
   statement is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   - You will probably find it convenient to add a helper function that implements the 
     block typecheck rules.
*)
let rec typecheck_stmt (tc : Tctxt.t) (s:Ast.stmt node) (to_ret:ret_ty) : Tctxt.t * bool =
  match s.elt with
  | Decl vdecl -> typecheck_decl tc s vdecl, false
  | Assn (l, r) -> (let leftty = 
      match l.elt with
      | Id id -> (let idty = typecheck_exp tc l in
          match idty, Tctxt.lookup_global_option id tc with
          | TRef(RFun(_)), Some typ -> type_error l 
              (pp "[typecheck_stmt][Assn]: the identifier 
              %s is a function id" id)
          | _ -> idty)
      | _ -> typecheck_exp tc l in
      let rightty = typecheck_exp tc r in
      let pred_subtype = subtype tc rightty leftty in
      match pred_subtype with
      | true -> tc, false
      | false -> type_error s "[typecheck_stmt][Assn]: 
          encountered unexpected RHS expression type in 
          assignment statement")
  | SCall (func, args) -> (let func_argty = (
      match typecheck_exp tc func with
      | TRef(RFun(argtyp, RetVoid)) -> argtyp
      | _ -> type_error func "[typecheck_stmt][SCall]:
            encountered unexpected function type") in
      let argty = List.map (fun f8 -> typecheck_exp tc f8) args in
      let pred_argslen = List.length argty = List.length func_argty in
      match pred_argslen with
      | false -> type_error func 
          "[typecheck_stmt][SCall]: 
          encountered unexpected number of arguments"
      | true -> (let pred_subtype = List.fold_left2 (fun acc f_aty aty ->
          acc && subtype tc f_aty aty) true func_argty argty in
          match pred_subtype with
          | true -> tc, false
          | false -> type_error func 
              "[typecheck_stmt][SCall]:
              encountered unexpected function type"))
  | Cast (rty, id, exp, ifbl, elsebl) -> (
      let pred_uniqueId = Tctxt.lookup_local_option id tc in
      let null_expty = typecheck_exp tc exp in
      let expty = (match null_expty with
      | TNullRef retty -> TRef retty
      | _ -> type_error exp 
          "[typecheck_stmt][Cast]: 
          encountered unexpected expression 
          type in null check") in
      let idty = (match rty with
          | RString -> TRef RString
          | RStruct stct_id -> TRef(RStruct stct_id)
          | RArray typ -> TRef(RArray(typ))
          | RFun (typ, retty) -> TRef(RFun(typ, retty))) in
      let pred_subtype = subtype tc expty idty in
      let tc_ifbl = Tctxt.add_local tc id idty in
      let _, ret_ifbl = typecheck_block tc_ifbl ifbl to_ret in
      let _, ret_elsebl = typecheck_block tc elsebl to_ret in
      match pred_uniqueId, pred_subtype with
      | None, true -> tc, ret_ifbl && ret_elsebl
      | Some _, _ -> type_error s (pp 
          "[typecheck_stmt][Cast]: the 
          identifier %s is already defined 
          in local context" id)
      | _, false -> type_error exp 
          "[typecheck_stmt][Cast]: 
          encountered unexpected expression 
          type in null check")
  | Ret None -> (
      match to_ret with
      | RetVoid -> tc, true
      | RetVal typ -> type_error s (pp 
          "[typecheck_stmt][Ret None]: 
          None expected to return a value of %s 
          type" @@  string_of_ty typ))
  | Ret Some exp -> (
      let expty = typecheck_exp tc exp in
      match to_ret with
      | RetVoid -> type_error exp 
          (pp "[typecheck_stmt][Ret Some]: 
          void expected, encountered unexpected 
          return value of type %s" @@ string_of_ty expty)
      | RetVal typ -> (
          match subtype tc expty typ with
          | true -> tc, true
          | false -> type_error exp (pp 
              "[typecheck_stmt][Ret Some]: 
              return value of type %s expected, 
              encountered unexpected return value 
              of type %s" (string_of_ty expty) 
              (string_of_ty typ))))
  | If (cond, ifbl, elsebl) -> (
      let condty = typecheck_exp tc cond in
      let _, ret_ifbl = typecheck_block tc ifbl to_ret in
      let _, ret_elsebl = typecheck_block tc elsebl to_ret in
      match condty with
      | TBool -> tc, ret_ifbl && ret_elsebl
      | _ -> type_error cond "[typecheck_stmt][If]: 
          the condition is not a boolean expression")
  | While (cond, wbl) -> (
      let condty = typecheck_exp tc cond in
      let _ = typecheck_block tc wbl to_ret in
      match condty with
      | TBool -> tc, false
      | _ -> type_error cond "[typecheck_stmt][While]: 
          the condition is not a boolean expression")
  | For (decls, cond, opt_stmt, forbl) -> (
      let decl_tc = 
          List.fold_left (fun c f9 -> typecheck_decl c s f9) tc decls in
      let pred_condty = (match cond with
      | Some exp -> (
          match typecheck_exp decl_tc exp with
          | TBool -> true
          | _ -> false)
      | None -> true) in
      let _, ret_stmt = (match opt_stmt with
          | Some stmt -> typecheck_stmt decl_tc stmt to_ret
          | None -> decl_tc, false) in
      let _ = typecheck_block decl_tc forbl to_ret in
      match pred_condty, ret_stmt with
      | true, false -> tc, false
      | false, _ -> type_error s "[typecheck_stmt][For]: 
          the condition is not a boolean expression"
      | _, true -> type_error s "[typecheck_stmt][For]: 
          encountered unexpected return behaviour of loop 
          statement")

and typecheck_block (tc: Tctxt.t) (bl: Ast.block) (to_ret: ret_ty) : Tctxt.t * bool =
  match bl with
  | [] -> tc, false
  | [s] -> typecheck_stmt tc s to_ret
  | shd :: stl -> (
      let tc2, pred_ret = typecheck_stmt tc shd to_ret in
      match pred_ret with
      | false -> typecheck_block tc2 stl to_ret
      | true -> type_error shd "[typecheck_block]: 
          encountered unexpected return behaviour 
          of statement")

and typecheck_decl (tc: Tctxt.t) (s: Ast.stmt node) (vdecl: Ast.vdecl) : Tctxt.t =
  let id, exp = vdecl in
  let pred_id = Tctxt.lookup_local_option id tc in
  let typ = typecheck_exp tc exp in
  match pred_id with
  | None -> Tctxt.add_local tc id typ
  | Some _ -> type_error s (pp "[typecheck_stmt][Decl]: 
      identifier %s is already defined in the local 
      context" id)


(* struct type declarations ------------------------------------------------- *)
(* Here is an example of how to implement the TYP_TDECLOK rule, which is 
   is needed elswhere in the type system.
 *)

(* Helper function to look for duplicate field names *)
let rec check_dups (fs : field list) =
  match fs with
  | [] -> false
  | h :: t -> (List.exists (fun x -> x.fieldName = h.fieldName) t) || check_dups t

let rec has_dups lst proj = 
  match lst with
  | hd :: tl -> 
      List.exists(fun g0 -> proj g0 = proj hd) tl || has_dups tl proj
  | [] -> false

let typecheck_tdecl (tc : Tctxt.t) (id : id) (fs : field list)  (l : 'a Ast.node) : unit =
  if check_dups fs
  then type_error l ("Repeated fields in " ^ id) 
  else List.iter (fun f -> typecheck_ty l tc f.ftyp) fs

(* function declarations ---------------------------------------------------- *)
(* typecheck a function declaration 
    - extends the local context with the types of the formal parameters to the 
      function
    - typechecks the body of the function (passing in the expected return type
    - checks that the function actually returns
*)
let typecheck_fdecl (tc : Tctxt.t) (f : Ast.fdecl) (l : 'a Ast.node) : unit =
  let {frtyp; fname; args; body} = f in
  let tc_args = List.fold_left (fun acc (typ, id) -> 
      Tctxt.add_local acc id typ) tc args in
  let _, pred_ret = typecheck_block tc_args body frtyp in
  match pred_ret with
  | true -> ()
  | false -> type_error l "[typecheck_fdecl]: 
      the last statement of the function body 
      does not return"

(* creating the typchecking context ----------------------------------------- *)

(* The following functions correspond to the
   judgments that create the global typechecking context.

   create_struct_ctxt: - adds all the struct types to the struct 'S'
   context (checking to see that there are no duplicate fields

     H |-s prog ==> H'


   create_function_ctxt: - adds the the function identifiers and their
   types to the 'G' context (ensuring that there are no redeclared
   function identifiers)

     H ; G1 |-f prog ==> G2


   create_global_ctxt: - typechecks the global initializers and adds
   their identifiers to the 'G' global context

     H ; G1 |-g prog ==> G2    


   NOTE: global initializers may mention function identifiers as
   constants, but can mention only other global values that were declared earlier
*)

(* Helper function to ensure context tc only includes structs & funcs *)
let rec typecheck_glob (tc: Tctxt.t) (exp: Ast.exp node) : Ast.ty =
  match exp.elt with
  | Id _ | CBool _ | CNull _ 
  | CArr _ | CStr _ | CInt _ -> typecheck_exp tc exp
  | CStruct (stct_id, fields) -> (
      let fieldty =  List.map(fun (field_id, _) -> 
          Tctxt.lookup_field stct_id field_id tc) fields in
      let initty = List.map(fun (_, g1) -> 
          typecheck_glob tc g1) fields in
      let pred_fields = List.fold_left2 (fun acc expty typ ->
          acc && subtype tc typ expty) true fieldty initty in
      match pred_fields with
      | true -> TRef(RStruct (stct_id))
      | false -> type_error exp 
          "encountered [typecheck_glob]: 
          invalid field initializer")
  | _ -> type_error exp "[typecheck_glob]: 
      encountered unexpected global initializer"

let create_struct_ctxt (p:Ast.prog) : Tctxt.t =
  List.fold_left(fun tc decl ->
      match decl with
      | Gtdecl(tdecl) -> (
          let id, fields = tdecl.elt in
          let pred_fields = 
              not @@ has_dups fields (fun g2 -> g2.fieldName) in
          match pred_fields with
          | false -> type_error tdecl
              "[create_struct_ctxt]: encountered 
              duplicate fields in struct definition"
          | true -> (
              match Tctxt.lookup_struct_option id tc with
              | None -> Tctxt.add_struct tc id fields
              | Some _ -> type_error tdecl (pp 
                  "[create_struct_ctxt]: the struct 
                  identifier %s was previously was 
                  defined in the current scope" id)))
      | _ -> tc
      ) Tctxt.empty p

let create_function_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
  let tc = List.fold_left(fun tc (id, (argty, retty)) ->
      Tctxt.add_global tc id @@ TRef(RFun(argty, retty))
      ) tc builtins in
  List.fold_left(fun tc2 decl -> 
      match decl with
      | Gfdecl(fdecl) -> (
          let {frtyp; fname; args} = fdecl.elt in
          match Tctxt.lookup_global_option fname tc2 with
          | None -> 
              let f_argtys = List.map(fun (typ, _) -> typ) args in
              Tctxt.add_global tc2 fname (TRef(RFun(f_argtys, frtyp)))
          | Some typ -> type_error fdecl (pp 
              "[create_function_ctxt]: the identifier 
              %s was previously defined as type %s in 
              the current scope" fname (string_of_ty typ)))
      | _ -> tc2
    ) tc p

let create_global_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
  List.fold_left(fun tc2 decl -> 
      match decl with
      | Gvdecl(gdecl) -> (
          let {name; init} = gdecl.elt in
          match Tctxt.lookup_global_option name tc2 with
          | None -> 
              Tctxt.add_global tc2 name (typecheck_glob tc init)
          | Some typ -> type_error gdecl (pp 
              "[create_global_ctxt]: the identifier 
              %s was previously defined as type %s 
              in the current scope" name (string_of_ty typ)))
      | _ -> tc2
      ) tc p


(* This function implements the |- prog and the H ; G |- prog 
   rules of the oat.pdf specification.   
*)
let typecheck_program (p:Ast.prog) : unit =
  let sc = create_struct_ctxt p in
  let fc = create_function_ctxt sc p in
  let tc = create_global_ctxt fc p in
  List.iter (fun p ->
    match p with
    | Gfdecl ({elt=f} as l) -> typecheck_fdecl tc f l
    | Gtdecl ({elt=(id, fs)} as l) -> typecheck_tdecl tc id fs l 
    | _ -> ()) p

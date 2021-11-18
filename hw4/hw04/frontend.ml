open Ll
open Llutil
open Ast

(* instruction streams ------------------------------------------------------ *)

(* As in the last project, we'll be working with a flattened representation
   of LLVMlite programs to make emitting code easier. This version
   additionally makes it possible to emit elements will be gathered up and
   "hoisted" to specific parts of the constructed CFG
   - G of gid * Ll.gdecl: allows you to output global definitions in the middle
     of the instruction stream. You will find this useful for compiling string
     literals
   - E of uid * insn: allows you to emit an instruction that will be moved up
     to the entry block of the current function. This will be useful for 
     compiling local variable declarations
*)

type elt = 
  | L of Ll.lbl             (* block labels *)
  | I of uid * Ll.insn      (* instruction *)
  | T of Ll.terminator      (* block terminators *)
  | G of gid * Ll.gdecl     (* hoisted globals (usually strings) *)
  | E of uid * Ll.insn      (* hoisted entry block instructions *)

(* The type of streams of LLVMLite instructions. Note that to improve performance,
 * we will emit the instructions in reverse order. That is, the LLVMLite code:
 *     %1 = mul i64 2, 2
 *     %2 = add i64 1, %1
 *     br label %l1
 * would be constructed as a stream as follows:
 *     I ("1", Binop (Mul, I64, Const 2L, Const 2L))
 *     >:: I ("2", Binop (Add, I64, Const 1L, Id "1"))
 *     >:: E (Br "l1")
 *)
type stream = elt list
let ( >@ ) x y = y @ x
let ( >:: ) x y = y :: x
let lift : (uid * insn) list -> stream = List.rev_map (fun (x,i) -> I (x,i))

(* Build a CFG and collection of global variable definitions from a stream *)
let cfg_of_stream (code:stream) : Ll.cfg * (Ll.gid * Ll.gdecl) list  =
    let gs, einsns, insns, term_opt, blks = List.fold_left
      (fun (gs, einsns, insns, term_opt, blks) e ->
        match e with
        | L l ->
           begin match term_opt with
           | None -> 
              if (List.length insns) = 0 then (gs, einsns, [], None, blks)
              else failwith @@ Printf.sprintf "build_cfg: block labeled %s has\
                                               no terminator" l
           | Some term ->
              (gs, einsns, [], None, (l, {insns; term})::blks)
           end
        | T t  -> (gs, einsns, [], Some (Llutil.Parsing.gensym "tmn", t), blks)
        | I (uid,insn)  -> (gs, einsns, (uid,insn)::insns, term_opt, blks)
        | G (gid,gdecl) ->  ((gid,gdecl)::gs, einsns, insns, term_opt, blks)
        | E (uid,i) -> (gs, (uid, i)::einsns, insns, term_opt, blks)
      ) ([], [], [], None, []) code
    in
    match term_opt with
    | None -> failwith "build_cfg: entry block has no terminator" 
    | Some term -> 
       let insns = einsns @ insns in
       ({insns; term}, blks), gs


(* compilation contexts ----------------------------------------------------- *)

(* To compile OAT variables, we maintain a mapping of source identifiers to the
   corresponding LLVMlite operands. Bindings are added for global OAT variables
   and local variables that are in scope. *)

module Ctxt = struct

  type t = (Ast.id * (Ll.ty * Ll.operand)) list
  let empty = []

  (* Add a binding to the context *)
  let add (c:t) (id:id) (bnd:Ll.ty * Ll.operand) : t = (id,bnd)::c

  (* Lookup a binding in the context *)
  let lookup (id:Ast.id) (c:t) : Ll.ty * Ll.operand =
    List.assoc id c

  (* Lookup a function, fail otherwise *)
  let lookup_function (id:Ast.id) (c:t) : Ll.ty * Ll.operand =
    match List.assoc id c with
    | Ptr (Fun (args, ret)), g -> Ptr (Fun (args, ret)), g
    | _ -> failwith @@ id ^ " not bound to a function"

  let lookup_function_option (id:Ast.id) (c:t) : (Ll.ty * Ll.operand) option =
    try Some (lookup_function id c) with _ -> None
  
end

(* compiling OAT types ------------------------------------------------------ *)

(* The mapping of source types onto LLVMlite is straightforward. Booleans and ints
   are represented as the corresponding integer types. OAT strings are
   pointers to bytes (I8). Arrays are the most interesting type: they are
   represented as pointers to structs where the first component is the number
   of elements in the following array.

   The trickiest part of this project will be satisfying LLVM's rudimentary type
   system. Recall that global arrays in LLVMlite need to be declared with their
   length in the type to statically allocate the right amount of memory. The 
   global strings and arrays you emit will therefore have a more specific type
   annotation than the output of cmp_rty. You will have to carefully bitcast
   gids to satisfy the LLVM type checker.
*)

let rec cmp_ty : Ast.ty -> Ll.ty = function
  | Ast.TBool  -> I1
  | Ast.TInt   -> I64
  | Ast.TRef r -> Ptr (cmp_rty r)

and cmp_rty : Ast.rty -> Ll.ty = function
  | Ast.RString  -> I8
  | Ast.RArray u -> Struct [I64; Array(0, cmp_ty u)]
  | Ast.RFun (ts, t) -> 
      let args, ret = cmp_fty (ts, t) in
      Fun (args, ret)

and cmp_ret_ty : Ast.ret_ty -> Ll.ty = function
  | Ast.RetVoid  -> Void
  | Ast.RetVal t -> cmp_ty t

and cmp_fty (ts, r) : Ll.fty =
  List.map cmp_ty ts, cmp_ret_ty r


let typ_of_binop : Ast.binop -> Ast.ty * Ast.ty * Ast.ty = function
  | Add | Mul | Sub | Shl | Shr | Sar | IAnd | IOr -> (TInt, TInt, TInt)
  | Eq | Neq | Lt | Lte | Gt | Gte -> (TInt, TInt, TBool)
  | And | Or -> (TBool, TBool, TBool)

let typ_of_unop : Ast.unop -> Ast.ty * Ast.ty = function
  | Neg | Bitnot -> (TInt, TInt)
  | Lognot       -> (TBool, TBool)

(* Compiler Invariants

   The LLVM IR type of a variable (whether global or local) that stores an Oat
   array value (or any other reference type, like "string") will always be a
   double pointer.  In general, any Oat variable of Oat-type t will be
   represented by an LLVM IR value of type Ptr (cmp_ty t).  So the Oat variable
   x : int will be represented by an LLVM IR value of type i64*, y : string will
   be represented by a value of type i8**, and arr : int[] will be represented
   by a value of type {i64, [0 x i64]}**.  Whether the LLVM IR type is a
   "single" or "double" pointer depends on whether t is a reference type.

   We can think of the compiler as paying careful attention to whether a piece
   of Oat syntax denotes the "value" of an expression or a pointer to the
   "storage space associated with it".  This is the distinction between an
   "expression" and the "left-hand-side" of an assignment statement.  Compiling
   an Oat variable identifier as an expression ("value") does the load, so
   cmp_exp called on an Oat variable of type t returns (code that) generates a
   LLVM IR value of type cmp_ty t.  Compiling an identifier as a left-hand-side
   does not do the load, so cmp_lhs called on an Oat variable of type t returns
   and operand of type (cmp_ty t)*.  Extending these invariants to account for
   array accesses: the assignment e1[e2] = e3; treats e1[e2] as a
   left-hand-side, so we compile it as follows: compile e1 as an expression to
   obtain an array value (which is of pointer of type {i64, [0 x s]}* ).
   compile e2 as an expression to obtain an operand of type i64, generate code
   that uses getelementptr to compute the offset from the array value, which is
   a pointer to the "storage space associated with e1[e2]".

   On the other hand, compiling e1[e2] as an expression (to obtain the value of
   the array), we can simply compile e1[e2] as a left-hand-side and then do the
   load.  So cmp_exp and cmp_lhs are mutually recursive.  [[Actually, as I am
   writing this, I think it could make sense to factor the Oat grammar in this
   way, which would make things clearer, I may do that for next time around.]]

 
   Consider globals7.oat

   /--------------- globals7.oat ------------------ 
   global arr = int[] null;

   int foo() { 
     var x = new int[3]; 
     arr = x; 
     x[2] = 3; 
     return arr[2]; 
   }
   /------------------------------------------------

   The translation (given by cmp_ty) of the type int[] is {i64, [0 x i64}* so
   the corresponding LLVM IR declaration will look like:

   @arr = global { i64, [0 x i64] }* null

   This means that the type of the LLVM IR identifier @arr is {i64, [0 x i64]}**
   which is consistent with the type of a locally-declared array variable.

   The local variable x would be allocated and initialized by (something like)
   the following code snippet.  Here %_x7 is the LLVM IR uid containing the
   pointer to the "storage space" for the Oat variable x.

   %_x7 = alloca { i64, [0 x i64] }*                              ;; (1)
   %_raw_array5 = call i64*  @oat_alloc_array(i64 3)              ;; (2)
   %_array6 = bitcast i64* %_raw_array5 to { i64, [0 x i64] }*    ;; (3)
   store { i64, [0 x i64]}* %_array6, { i64, [0 x i64] }** %_x7   ;; (4)

   (1) note that alloca uses cmp_ty (int[]) to find the type, so %_x7 has 
       the same type as @arr 

   (2) @oat_alloc_array allocates len+1 i64's 

   (3) we have to bitcast the result of @oat_alloc_array so we can store it
        in %_x7 

   (4) stores the resulting array value (itself a pointer) into %_x7 

  The assignment arr = x; gets compiled to (something like):

  %_x8 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7     ;; (5)
  store {i64, [0 x i64] }* %_x8, { i64, [0 x i64] }** @arr       ;; (6)

  (5) load the array value (a pointer) that is stored in the address pointed 
      to by %_x7 

  (6) store the array value (a pointer) into @arr 

  The assignment x[2] = 3; gets compiled to (something like):

  %_x9 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7      ;; (7)
  %_index_ptr11 = getelementptr { i64, [0 x  i64] }, 
                  { i64, [0 x i64] }* %_x9, i32 0, i32 1, i32 2   ;; (8)
  store i64 3, i64* %_index_ptr11                                 ;; (9)

  (7) as above, load the array value that is stored %_x7 

  (8) calculate the offset from the array using GEP

  (9) store 3 into the array

  Finally, return arr[2]; gets compiled to (something like) the following.
  Note that the way arr is treated is identical to x.  (Once we set up the
  translation, there is no difference between Oat globals and locals, except
  how their storage space is initially allocated.)

  %_arr12 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr    ;; (10)
  %_index_ptr14 = getelementptr { i64, [0 x i64] },                
                 { i64, [0 x i64] }* %_arr12, i32 0, i32 1, i32 2  ;; (11)
  %_index15 = load i64, i64* %_index_ptr14                         ;; (12)
  ret i64 %_index15

  (10) just like for %_x9, load the array value that is stored in @arr 

  (11)  calculate the array index offset

  (12) load the array value at the index 

*)

(* Global initialized arrays:

  There is another wrinkle: To compile global initialized arrays like in the
  globals4.oat, it is helpful to do a bitcast once at the global scope to
  convert the "precise type" required by the LLVM initializer to the actual
  translation type (which sets the array length to 0).  So for globals4.oat,
  the arr global would compile to (something like):

  @arr = global { i64, [0 x i64] }* bitcast 
           ({ i64, [4 x i64] }* @_global_arr5 to { i64, [0 x i64] }* ) 
  @_global_arr5 = global { i64, [4 x i64] } 
                  { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }

*) 



(* Some useful helper functions *)

(* Generate a fresh temporary identifier. Since OAT identifiers cannot begin
   with an underscore, these should not clash with any source variables *)
let gensym : string -> string =
  let c = ref 0 in
  fun (s:string) -> incr c; Printf.sprintf "_%s%d" s (!c)

(* Amount of space an Oat type takes when stored in the satck, in bytes.  
   Note that since structured values are manipulated by reference, all
   Oat values take 8 bytes on the stack.
*)
let size_oat_ty (t : Ast.ty) = 8L

(* Generate code to allocate a zero-initialized array of source type TRef (RArray t) of the
   given size. Note "size" is an operand whose value can be computed at
   runtime *)
let oat_alloc_array (t:Ast.ty) (size:Ll.operand) : Ll.ty * operand * stream =
  let ans_id, arr_id = gensym "array", gensym "raw_array" in
  let ans_ty = cmp_ty @@ TRef (RArray t) in
  let arr_ty = Ptr I64 in
  ans_ty, Id ans_id, lift
    [ arr_id, Call(arr_ty, Gid "oat_alloc_array", [I64, size])
    ; ans_id, Bitcast(arr_ty, Id arr_id, ans_ty) ]




(* Compiles an expression exp in context c, outputting the Ll operand that will
   recieve the value of the expression, and the stream of instructions
   implementing the expression. 

   Tips:
   - use the provided cmp_ty function!

   - string literals (CStr s) should be hoisted. You'll need to make sure
     either that the resulting gid has type (Ptr I8), or, if the gid has type
     [n x i8] (where n is the length of the string), convert the gid to a 
     (Ptr I8), e.g., by using getelementptr.

   - use the provided "oat_alloc_array" function to implement literal arrays
     (CArr) and the (NewArr) expressions

*)
let rec cmp_exp (c:Ctxt.t) (exp:Ast.exp node) : Ll.ty * Ll.operand * stream =
  match exp.elt with
  | CInt i -> (I64, Const i, [])
  | CNull n -> (cmp_rty n, Null, [])
  | CStr str -> 
    let sid = gensym "exp_of_string" in
    let bid = (gensym "exp_of_bit") in
    (Ptr I8, Id bid, 
    [G(sid, (Array((String.length str)+1, I8), 
      Ll.GString str))] >@
    [I(bid, (Bitcast (Ptr 
      (Array((String.length str)+1, I8)), 
      Gid sid, Ptr I8)))]) 
  | CBool b -> 
    let val_of_b = match b with 
    | true -> 1L 
    | false -> 0L in 
      (I1, Const val_of_b, [])
  | Id id -> 
    let (t, opr) = Ctxt.lookup id c in
    let iid = gensym "exp_of_id" in
    let t2 = match t with 
      | Ptr t -> t 
      | _ -> failwith "variable type failure" in
        (t2, Id iid, [I(iid, Load(t, opr))])
  | NewArr (t, exp_of_item) ->
    let t_of_exp, opr_of_exp, st_of_exp = cmp_exp c exp_of_item in
    let t_of_arr, opr_of_arr, st_of_arr = oat_alloc_array t opr_of_exp in
      (t_of_arr, opr_of_arr, st_of_exp >@ st_of_arr) 
  | CArr (t, exp_of_left_item) ->
    let t_of_l_arr, opr_of_l_arr, st_of_l_arr = oat_alloc_array t
      (Const (Int64.of_int (List.length exp_of_left_item))) in
    let t_of_lopr, st_of_cmp = List.fold_left 
    (fun (accum, accum2) f -> 
      let t_of_cmp, opr_of_cmpexp, st_of_cmpexp = cmp_exp c f in 
        accum @ [(t_of_cmp, opr_of_cmpexp)], 
        accum2 >@ st_of_cmpexp) ([], []) exp_of_left_item in
      let llval = List.mapi 
        (fun f2 (left_type, left_opr) -> 
          let gepid = gensym "id_of_gep" in 
          let currid = gensym "id_of_llval" in 
          [I(gepid, Gep (t_of_l_arr, opr_of_l_arr, [Const 0L; Const 1L; Const (Int64.of_int f2)]))] >@
            [I(currid, Store(left_type, left_opr, Id gepid))]) t_of_lopr in
          let stval = List.fold_left (fun accl el -> accl >@ el) [] llval in
          let ret = st_of_l_arr >@ st_of_cmp >@ stval in
    (t_of_l_arr, opr_of_l_arr, ret)
  | Uop (uop, exp_of_item) -> 
    let (t, opr, stream) = cmp_exp c exp_of_item in
    let uid = gensym "id_of_uop" in 
    let ins_of_opr (un: Ast.unop) = 
      match un with 
      | Lognot -> Icmp (Eq, t, opr, Const 0L)
      | Neg -> Binop (Sub, t, Const 0L, opr)
      | Bitnot -> Binop (Xor, t, opr, Const (-1L)) in
    let get_uop_type (t_of_uop: Ast.unop) = 
      match t_of_uop with 
      | Neg | Bitnot -> t
      | Lognot -> I1 in 
    (get_uop_type uop, Id uid, stream >:: I (uid, ins_of_opr uop))
  | Bop (binop, exp_of_item, exp_of_item_2) -> 
    let (t, opr, stream) = cmp_exp c exp_of_item in
    let (t2, opr2, stream2) = cmp_exp c exp_of_item_2 in
    let bopid = gensym "exp_of_bop" in 
    let ins_of_opr (bin: Ast.binop) = 
      match bin with 
      | Add -> Binop (Add, t, opr, opr2) 
      | Sub -> Binop (Sub, t, opr, opr2)
      | Mul -> Binop (Mul, t, opr, opr2)
      | Eq  -> Icmp (Eq, t, opr, opr2) 
      | Neq -> Icmp (Ne, t, opr, opr2) 
      | Shr -> Binop (Lshr, t, opr, opr2) 
      | Shl -> Binop (Shl, t, opr, opr2) 
      | Sar -> Binop (Ashr, t, opr, opr2)
      | And -> Binop (And, t, opr, opr2)
      | Or -> Binop (Or, t, opr, opr2) 
      | IAnd -> Binop (And, t, opr, opr2) 
      | IOr -> Binop (Or, t, opr, opr2) 
      | Lt  -> Icmp (Slt, t, opr, opr2)
      | Gt  -> Icmp (Sgt, t, opr, opr2) 
      | Lte -> Icmp (Sle, t, opr, opr2) 
      | Gte -> Icmp (Sge, t, opr, opr2) in 
    let get_binop_type (t_of_binop: Ast.binop) = 
      match t_of_binop with 
      | Add  | Mul | Sub | And | IAnd | IOr | Or | Shl | Shr | Sar -> t
      | Eq | Neq | Lt | Lte | Gt | Gte -> I1 in 
    (get_binop_type binop, Id bopid, stream >@ stream2 >:: I (bopid, ins_of_opr binop))
  | Call (exp_of_item, exp_of_left_item) ->
    (match exp_of_item.elt with 
    | Id id -> 
      let cid = gensym "exp_of_call" in
      let (args_of_ll, stream_accum) = List.fold_left 
      (fun (accum, accum2) f3 -> 
        let (t, opr, stream) = cmp_exp c f3 in 
        (accum @ [(t, opr)], accum2 >@ stream)) ([],[]) exp_of_left_item in
    let (t, opr) = Ctxt.lookup_function id c in
    let t2 = 
      match t with 
      | Ptr (Fun (_, r)) -> r
      | _ -> failwith "function type failure" in
        (t2, Id cid, stream_accum >@ 
          [I (cid, Ll.Call(t2, opr, args_of_ll))])
      | _ -> failwith "call expected function id")
    | Index (exp_of_item, exp_of_item_2) -> 
      let indid = gensym "id_of_index" in
      let lid = gensym "id_of_load" in
      let (t, opr, stream) = cmp_exp c exp_of_item in
      let (t2, opr2, stream2) = cmp_exp c exp_of_item_2 in
      let nested_type = 
        match t with
        | Ptr (Struct [I64; Array (_, tp)]) -> tp
        | _ -> failwith "Index failure" in
          let stream_of_ind = stream >@ stream2 >@ 
            [I(indid, Gep(t, opr, [Const 0L; Const 1L; opr2]))] >@
            [I(lid, Load(Ptr nested_type, Id indid))] in
      (nested_type, Id lid, stream_of_ind)
  


(* Compile a statement in context c with return typ rt. Return a new context, 
   possibly extended with new local bindings, and the instruction stream
   implementing the statement.

   Left-hand-sides of assignment statements must either be OAT identifiers,
   or an index into some arbitrary expression of array type. Otherwise, the
   program is not well-formed and your compiler may throw an error.

   Tips:
   - for local variable declarations, you will need to emit Allocas in the
     entry block of the current function using the E() constructor.

   - don't forget to add a bindings to the context for local variable 
     declarations
   
   - you can avoid some work by translating For loops to the corresponding
     While loop, building the AST and recursively calling cmp_stmt

   - you might find it helpful to reuse the code you wrote for the Call
     expression to implement the SCall statement

   - compiling the left-hand-side of an assignment is almost exactly like
     compiling the Id or Index expression. Instead of loading the resulting
     pointer, you just need to store to it!

 *)
let rec cmp_stmt (c:Ctxt.t) (rt:Ll.ty) (stmt:Ast.stmt node) : Ctxt.t * stream =
  match stmt.elt with
  | Decl (id, exp_of_item) ->
    (let did = gensym "id_of_decl" in
    let (t_of_cmpexp, opr_of_cmpexp, stream_of_cmpexp) = cmp_exp c exp_of_item in
    let ctxt2 = Ctxt.add c id (Ptr t_of_cmpexp, Id did) in
    let alloca = [E(did, Alloca(t_of_cmpexp))] in
    let val_stored = [I(gensym "val_of_decl", Store(t_of_cmpexp, opr_of_cmpexp, Id did))] in
    (ctxt2, (stream_of_cmpexp >@ alloca >@ val_stored)))
  | Ret ret -> 
    (match ret with 
    | Some r -> 
      (match rt with  
      | Void -> failwith "Non-void return when void expected"
      | _ -> 
        let (t_of_exp, opr_of_exp, stream_of_exp) = cmp_exp c r in
        if t_of_exp <> rt then failwith "Type mismatch" else
          (c, stream_of_exp >@ [T(Ret (t_of_exp, Some opr_of_exp))]))
    | None -> 
      (match rt with 
      | Void -> (c, [T (Ret (Void, None))])
      | _ -> failwith "Void return when non-void expected"))
  | Assn (exp_of_item, exp_of_item_2) -> 
    let (t, opr, istream) = cmp_exp c exp_of_item_2 in
    let aid = gensym "id_of_assn_stmt" in 
    let ins_val = 
    match exp_of_item.elt with 
    | Id id -> 
      let (t2, opr2) = Ctxt.lookup id c in
      [I(aid, (Store (t, opr, opr2)))]
    | Index (e, e2) ->
      let (t_a, opr_a, stream_a) = cmp_exp c e in 
      let (t_b, opr_b, stream_b) = cmp_exp c e2 in
      let gepid = gensym "id_of_gep_exp" in
      stream_a >@ stream_b >@ 
        [I(gepid, Gep(t_a, opr_a, [Const 0L; Const 1L; opr_b]))] >@ 
        [I(aid, Store(t, opr, Id gepid))]
    | _ -> failwith "Assn must be type id or index" in
    (c, istream >@ ins_val)
  | SCall (exp_of_item, exp_of_item_2) ->
    (match exp_of_item.elt with 
      | Id id -> 
        let scid = gensym "id_of_scall_stmt" in
        let (args_of_ll, stream_accum) = List.fold_left 
        (fun (accum, accum2) f4 -> 
          let (t, opr, stream) = cmp_exp c f4 in 
          (accum @ [(t, opr)], accum2 >@ stream)) ([],[]) exp_of_item_2 in
    let (t, opr) = Ctxt.lookup_function id c in
    let nested_type = 
      match t with 
      | Ptr (Fun (_, r)) -> r
      | _ -> failwith "Function type failure" in
        (Ctxt.add c scid (Ptr nested_type, Id scid),
        stream_accum >@ [I (scid, Ll.Call(nested_type, opr, args_of_ll))])
      | _ -> failwith "SCall expected function id")
  | While (exp_of_item, stmt2) ->
    let (t, opr, istream) = cmp_exp c exp_of_item in
    let (_, bk) = cmp_block c rt stmt2 in
    let e = gensym "entry" in
    let b =  gensym "body" in
    let ex =  gensym "exit" in
    (c, [ T (Br e) ] >@ [ L e ]
      >@ istream >@ [ T (Cbr (opr, b, ex)) ]
      >@ [ L b ] >@ bk >@ [ T (Br e) ] >@ [ L ex ])
  | For (vdecl, opr_of_exp, opr_of_stmt, stmt2) -> 
    let (ctxt2, stream2) = List.fold_left 
    (fun (ctxt2, accum) (id_of_vdecl, exp_of_vdecl) -> 
      let (t_of_cmpexp, opr_of_cmpexp, stream_of_cmpexp) = cmp_exp ctxt2 exp_of_vdecl in
      let vid = gensym id_of_vdecl in
      let ctext3 = Ctxt.add ctxt2 id_of_vdecl (Ptr t_of_cmpexp, Id vid) in 
      let alloca = [E(vid, Alloca(t_of_cmpexp))] in
      let val_stored = [I(gensym "stored_val", Store(t_of_cmpexp, opr_of_cmpexp, Id vid))] in
      (ctext3, accum >@ stream_of_cmpexp >@ alloca >@ val_stored)) (c, []) vdecl in
    let expr = 
      match opr_of_exp with 
      | Some e -> e 
      | None -> Ast.no_loc (CBool true) in
    let stmt3 = 
      match opr_of_stmt with 
      | Some stmt -> [stmt] 
      | None -> [] in
    let while_conv = Ast.no_loc (While(expr, stmt2 @ stmt3)) in
    let (_, stream_of_while) = cmp_stmt ctxt2 rt while_conv in
    let stream_of_ret = stream2 >@ stream_of_while in
    (c, stream_of_ret)
  | If (exp_of_item, bk, bk2) -> 
    let (t, opr, istream) = cmp_exp c exp_of_item in
    let (_, b) = cmp_block c rt bk in
    let (_, b2) = cmp_block c rt bk2 in
    let merge = gensym "merge" in 
    let breq = gensym "branch_of_eq" in
    let brneq = gensym "branch_of_neq" in
    (c, istream >@ [T (Cbr (opr, breq, brneq))]
    >@ [L breq] >@ b >@ [T (Br merge)]
    >@ [L brneq] >@ b2 >@ [T (Br merge)] >@ [L merge])


(* Compile a series of statements *)
and cmp_block (c:Ctxt.t) (rt:Ll.ty) (stmts:Ast.block) : Ctxt.t * stream =
  List.fold_left (fun (c, code) s -> 
      let c, stmt_code = cmp_stmt c rt s in
      c, code >@ stmt_code
    ) (c,[]) stmts



(* Adds each function identifer to the context at an
   appropriately translated type.  

   NOTE: The Gid of a function is just its source name
*)
let cmp_function_ctxt (c:Ctxt.t) (p:Ast.prog) : Ctxt.t =
    List.fold_left (fun c -> function
      | Ast.Gfdecl { elt={ frtyp; fname; args } } ->
         let ft = TRef (RFun (List.map fst args, frtyp)) in
         Ctxt.add c fname (cmp_ty ft, Gid fname)
      | _ -> c
    ) c p 

(* Compile a function declaration in global context c. Return the LLVMlite cfg
   and a list of global declarations containing the string literals appearing
   in the function.

   You will need to
   1. Allocate stack space for the function parameters using Alloca
   2. Store the function arguments in their corresponding alloca'd stack slot
   3. Extend the context with bindings for function variables
   4. Compile the body of the function using cmp_block
   5. Use cfg_of_stream to produce a LLVMlite cfg from 
 *)
let cmp_fdecl (c:Ctxt.t) (f:Ast.fdecl node) : Ll.fdecl * (Ll.gid * Ll.gdecl) list =
  let (ctxt2, stream_of_args) = List.fold_left
  (fun (ctxt3, accum) (t_of_arg, id_of_arg) -> 
    (*First, allocate space, then store values, then extend the context.*)
    let alloc_of_gid = gensym "allocated_arg" in
    let stored_val_of_gid = gensym "stored_arg" in
    let accl = accum >:: I (alloc_of_gid, (Alloca (cmp_ty t_of_arg)))
      >:: I (stored_val_of_gid, (Store ((cmp_ty t_of_arg), Id id_of_arg, Id alloc_of_gid))) in
      let ctxt_new = Ctxt.add ctxt3 id_of_arg (Ptr (cmp_ty t_of_arg), Id alloc_of_gid) in
    (ctxt_new, accl)) (c,[]) f.elt.args in
  let ret_of_f = cmp_ret_ty f.elt.frtyp in 
  let llt_of_f = List.map (fun (a, b) -> cmp_ty a) f.elt.args in
  let llparam_of_f = List.map (fun (a, b) -> b) f.elt.args in 
  let return_opr = 
    match ret_of_f with
    | Void -> None 
    | I1 -> Some (Const 0L) 
    | Ptr _ -> Some Null
    | I64 -> Some (Const 0L) 
    | _ -> failwith "function return type mismatch" in
    let danglehelper = [T(Ret(ret_of_f, return_opr))] in
    let (ctxt_new2, stream) = cmp_block ctxt2 ret_of_f f.elt.body in 
    let (cfg_new, ll_of_g) = cfg_of_stream (stream_of_args >@ stream >@ danglehelper) in
  ({ f_ty=(llt_of_f, ret_of_f); f_param=llparam_of_f; f_cfg=cfg_new }, ll_of_g)


(* Compile a global initializer, returning the resulting LLVMlite global
   declaration, and a list of additional global declarations.

   Tips:
   - Only CNull, CBool, CInt, CStr, and CArr can appear as global initializers
     in well-formed OAT programs. Your compiler may throw an error for the other
     cases

   - OAT arrays are always handled via pointers. A global array of arrays will
     be an array of pointers to arrays emitted as additional global declarations.
*)
let rec cmp_gexp c (e:Ast.exp node) : Ll.gdecl * (Ll.gid * Ll.gdecl) list =
  let id_of_gexp = gensym "const_of_global" in 
  match e.elt with 
  | CInt i -> ((I64, GInt i), [(id_of_gexp, (I64, GInt i))])
  | CNull n -> ((Ptr(cmp_rty n), GNull), [(id_of_gexp, (Ptr(cmp_rty n), GNull))])
  | CBool b -> 
    let val_of_b = 
      match b with 
      | true -> 1L 
      | false -> 0L in 
    ((I1, GInt val_of_b), [(id_of_gexp, (I1, GInt val_of_b))])
  | CStr str ->
    let str_of_arr = Array((String.length str)+1, I8) in
    ((Ptr I8, GBitcast(Ptr str_of_arr, GGid id_of_gexp, Ptr I8)), 
      [(id_of_gexp, (str_of_arr, GString str))])
  | CArr (t, exp_of_item) -> 
    let t_of_arr = Array(List.length exp_of_item, cmp_ty t) in
    let t_of_bit = Array(0, cmp_ty t) in
    let struct_of_t t = Struct [I64; t] in
    let (decl2, nested) = List.fold_left 
    (fun (inp, st) f5 -> 
      let (t, ginit), gid2 = cmp_gexp c f5 in 
      (inp @ [(t, ginit)], st @ gid2)) ([],[]) exp_of_item in
    let newstruct = 
      nested @ [(id_of_gexp, (struct_of_t t_of_arr, 
      GStruct [
        (I64, GInt (Int64.of_int (List.length exp_of_item))); 
        (t_of_arr, GArray decl2);
      ]))] in 
    ((Ptr(struct_of_t t_of_bit), 
      GBitcast(Ptr (struct_of_t t_of_arr), GGid id_of_gexp, Ptr (struct_of_t t_of_bit))), 
      newstruct)
  | _ -> failwith "Unsupported global initializer"


(* Populate a context with bindings for global variables 
   mapping OAT identifiers to LLVMlite gids and their types.

   Only a small subset of OAT expressions can be used as global initializers
   in well-formed programs. (The constructors starting with C). 
*)
let cmp_global_ctxt (c:Ctxt.t) (p:Ast.prog) : Ctxt.t =
  List.fold_left 
  (fun c decl -> 
    match decl with
    | Ast.Gvdecl gv ->
      let ((t_of_g, ginit_of_g), gid2)= cmp_gexp c gv.elt.init in
      Ctxt.add c gv.elt.name (Ptr t_of_g, Gid gv.elt.name)
    | _ -> c)
  c p


(* Oat internals function context ------------------------------------------- *)
let internals = [
    "oat_alloc_array",         Ll.Fun ([I64], Ptr I64)
  ]

(* Oat builtin function context --------------------------------------------- *)
let builtins =
  [ "array_of_string",  cmp_rty @@ RFun ([TRef RString], RetVal (TRef(RArray TInt)))
  ; "string_of_array",  cmp_rty @@ RFun ([TRef(RArray TInt)], RetVal (TRef RString))
  ; "length_of_string", cmp_rty @@ RFun ([TRef RString],  RetVal TInt)
  ; "string_of_int",    cmp_rty @@ RFun ([TInt],  RetVal (TRef RString))
  ; "string_cat",       cmp_rty @@ RFun ([TRef RString; TRef RString], RetVal (TRef RString))
  ; "print_string",     cmp_rty @@ RFun ([TRef RString],  RetVoid)
  ; "print_int",        cmp_rty @@ RFun ([TInt],  RetVoid)
  ; "print_bool",       cmp_rty @@ RFun ([TBool], RetVoid)
  ]

(* Compile a OAT program to LLVMlite *)
let cmp_prog (p:Ast.prog) : Ll.prog =
  (* add built-in functions to context *)
  let init_ctxt = 
    List.fold_left (fun c (i, t) -> Ctxt.add c i (Ll.Ptr t, Gid i))
      Ctxt.empty builtins
  in
  let fc = cmp_function_ctxt init_ctxt p in

  (* build global variable context *)
  let c = cmp_global_ctxt fc p in

  (* compile functions and global variables *)
  let fdecls, gdecls = 
    List.fold_right (fun d (fs, gs) ->
        match d with
        | Ast.Gvdecl { elt=gd } -> 
           let ll_gd, gs' = cmp_gexp c gd.init in
           (fs, (gd.name, ll_gd)::gs' @ gs)
        | Ast.Gfdecl fd ->
           let fdecl, gs' = cmp_fdecl c fd in
           (fd.elt.fname,fdecl)::fs, gs' @ gs
      ) p ([], [])
  in

  (* gather external declarations *)
  let edecls = internals @ builtins in
  { tdecls = []; gdecls; fdecls; edecls }

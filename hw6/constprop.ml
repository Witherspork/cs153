open Ll
open Datastructures

(* The lattice of symbolic constants ---------------------------------------- *)
module SymConst =
  struct
    type t = NonConst           (* Uid may take on multiple values at runtime *)
           | Const of int64     (* Uid will always evaluate to const i64 or i1 *)
           | UndefConst         (* Uid is not defined at the point *)

    let compare (a:t) (b:t) =
      match a, b with
      | (Const i, Const j) -> Int64.compare i j
      | (NonConst, NonConst) | (UndefConst, UndefConst) -> 0
      | (NonConst, _) | (_, UndefConst) -> 1
      | (UndefConst, _) | (_, NonConst) -> -1

    let to_string : t -> string = function
      | NonConst -> "NonConst"
      | Const i -> Printf.sprintf "Const (%LdL)" i
      | UndefConst -> "UndefConst"

    
  end

(* The analysis computes, at each program point, which UIDs in scope will evaluate 
   to integer constants *)
type fact = SymConst.t UidM.t



(* flow function across Ll instructions ------------------------------------- *)
(* - Uid of a binop or icmp with const arguments is constant-out
   - Uid of a binop or icmp with an UndefConst argument is UndefConst-out
   - Uid of a binop or icmp with an NonConst argument is NonConst-out
   - Uid of stores and void calls are UndefConst-out
   - Uid of all other instructions are NonConst-out
 *)
let symconst_of_opr opr fct =
  match opr with
  | Id i -> (
      match (UidM.exists (fun fct2 _ -> fct2 = i) fct) with
      | true -> UidM.find i fct
      | _ -> SymConst.UndefConst)
  | Gid g -> (
      match ((UidM.exists (fun fct3 _ -> fct3 = g) fct)) with
      | true -> UidM.find g fct
      | _ -> SymConst.UndefConst)
  | Null -> SymConst.UndefConst
  | Const c -> SymConst.Const c

let insn_flow (u,i:uid * insn) (d:fact) : fact =
  match i with
  | Store _ | Call (Void, _, _) -> UidM.add u SymConst.UndefConst d
  | Icmp (cc, _, opr, opr2) -> (
      let f4 = match (symconst_of_opr opr d, symconst_of_opr opr2 d) with
          | SymConst.NonConst, _ | _, SymConst.NonConst -> 
              SymConst.NonConst
          | SymConst.UndefConst, _ | _, SymConst.UndefConst ->
              SymConst.UndefConst
          | SymConst.Const c, SymConst.Const c2 ->
              let open Int64 in SymConst.Const (
              match cc with
              | Eq -> if compare c c2 = 0 then 1L else 0L
              | Ne -> if compare c c2 <> 0 then 1L else 0L
              | Sgt -> if compare c c2 > 0 then 1L else 0L
              | Slt -> if compare c c2 < 0 then 1L else 0L
              | Sge -> if compare c c2 >= 0 then 1L else 0L
              | Sle -> if compare c c2 <= 0 then 1L else 0L)
      in UidM.add u f4 d)
  | Binop (bop, _, opr, opr2) -> (
      let f5 = (match (symconst_of_opr opr d, symconst_of_opr opr2 d) with
          | SymConst.NonConst, _ | _, SymConst.NonConst -> 
              SymConst.NonConst
          | SymConst.UndefConst, _ | _, SymConst.UndefConst ->
              SymConst.UndefConst
          | SymConst.Const c, SymConst.Const c2 -> (
              let open Int64 in
              match bop with
              | Add -> SymConst.Const (add c c2)
              | Sub -> SymConst.Const (sub c c2)
              | Mul -> SymConst.Const (mul c c2)
              | Xor -> SymConst.Const (logxor c c2)
              | Or -> SymConst.Const (logor c c2)
              | And -> SymConst.Const (logand c c2)
              | Shl -> SymConst.Const (shift_left c (to_int c2))
              | Ashr -> SymConst.Const (shift_right c (to_int c2))
              | Lshr -> SymConst.Const (shift_right_logical c (to_int c2)))
      ) in UidM.add u f5 d)
  | _ -> UidM.add u SymConst.NonConst d

(* The flow function across terminators is trivial: they never change const info *)
let terminator_flow (t:terminator) (d:fact) : fact = d

(* module for instantiating the generic framework --------------------------- *)
module Fact =
  struct
    type t = fact
    let forwards = true

    let insn_flow = insn_flow
    let terminator_flow = terminator_flow
    
    let normalize : fact -> fact = 
      UidM.filter (fun _ v -> v != SymConst.UndefConst)

    let compare (d:fact) (e:fact) : int  = 
      UidM.compare SymConst.compare (normalize d) (normalize e)

    let to_string : fact -> string =
      UidM.to_string (fun _ v -> SymConst.to_string v)

    (* The constprop analysis should take the meet over predecessors to compute the
       flow into a node. You may find the UidM.merge function useful *)
    let combine (ds:fact list) : fact = 
        List.fold_left (fun f6 fct -> UidM.merge
            (fun uid sc sc2 ->
                match sc, sc2 with
                | None, Some ptr | Some ptr, None ->
                    Some ptr
                | None, None -> failwith "Invalid symconsts"
                | Some ptr, Some ptr2 -> (
                    match ptr, ptr2 with
                    | SymConst.NonConst, SymConst.NonConst
                    | SymConst.NonConst, SymConst.Const _
                    | SymConst.Const _, SymConst.NonConst ->
                        Some SymConst.NonConst
                    | SymConst.UndefConst, SymConst.UndefConst ->
                        Some SymConst.UndefConst
                    | SymConst.Const c, SymConst.Const c2 -> (
                          match c = c2 with
                          | true -> Some (SymConst.Const c)
                          | _ -> Some SymConst.NonConst)
                    | _, _ -> failwith "invalid symconsts")
      ) fct f6) UidM.empty ds
  end

(* instantiate the general framework ---------------------------------------- *)
module Graph = Cfg.AsGraph (Fact)
module Solver = Solver.Make (Fact) (Graph)

(* expose a top-level analysis operation ------------------------------------ *)
let analyze (g:Cfg.t) : Graph.t =
  (* the analysis starts with every node set to bottom (the map of every uid 
     in the function to UndefConst *)
  let init l = UidM.empty in

  (* the flow into the entry node should indicate that any parameter to the
     function is not a constant *)
  let cp_in = List.fold_right 
    (fun (u,_) -> UidM.add u SymConst.NonConst)
    g.Cfg.args UidM.empty 
  in
  let fg = Graph.of_cfg init cp_in g in
  Solver.solve fg


(* run constant propagation on a cfg given analysis results ----------------- *)
(* HINT: your cp_block implementation will probably rely on several helper 
   functions.                                                                 *)
let run (cg:Graph.t) (cfg:Cfg.t) : Cfg.t =
  let open SymConst in
  

  let cp_block (l:Ll.lbl) (cfg:Cfg.t) : Cfg.t =
    let b = Cfg.block cfg l in
    let cb = Graph.uid_out cg l in
    let bl =
        let to_const opr fct =
            match symconst_of_opr opr fct with
            | SymConst.Const c -> Ll.Const c
            | _ -> opr
        in
    (fun cbl blk -> 
        {insns = List.map (fun (id, instr) ->
            let fct = cbl id in
                (id, match instr with
                | Load (t, opr) -> Load (t, to_const opr fct)
                | Store (t, opr, opr2) -> 
                    Store (t, to_const opr fct, to_const opr2 fct)
                | Call (t, opr, arg) -> 
                    Call (t, to_const opr fct, 
                    List.map (fun (tp, op) -> (t, to_const op fct)) arg)
                | Binop (bop, t, opr, opr2) -> Binop (bop, t, to_const opr fct, to_const opr2 fct)
                | Icmp (cnd, t, opr, opr2) -> Icmp (cnd, t, to_const opr fct, to_const opr2 fct)
                | Gep (t, opr, oprs) -> 
                    Gep (t, to_const opr fct, 
                    List.map (fun f7 -> to_const f7 fct) oprs)
                | Bitcast (t, opr, t2) -> Bitcast (t, to_const opr fct, t2)
                | _ -> instr)) b.insns;
          term = match b.term with
          | (id, trm) ->
              let fct2 = cbl id in
                  (id, match trm with
                  | Ret (t, Some opr) -> Ret (t, Some (to_const opr fct2))
                  | Cbr (opr, l, l2) -> Cbr (to_const opr fct2, l, l2)
                  | _ -> trm)
      }) cb b in
      Cfg.add_block l bl cfg
  in

  LblS.fold cp_block (Cfg.nodes cfg) cfg

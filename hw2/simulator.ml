(* X86lite Simulator *)

(* See the documentation in the X86lite specification, available on the 
   course web pages, for a detailed explanation of the instruction
   semantics.
*)

open X86

(* simulator machine state -------------------------------------------------- *)

let mem_bot = 0x400000L          (* lowest valid address *)
let mem_top = 0x410000L          (* one past the last byte in memory *)
let mem_size = Int64.to_int (Int64.sub mem_top mem_bot)
let nregs = 17                   (* including Rip *)
let ins_size = 8L                (* assume we have a 8-byte encoding *)
let exit_addr = 0xfdeadL         (* halt when m.regs(%rip) = exit_addr *)

(* Your simulator should raise this exception if it tries to read from or
   store to an address not within the valid address space. *)
exception X86lite_segfault
exception X86lite_bad_label
exception X86lite_bad_inst

(* The simulator memory maps addresses to symbolic bytes.  Symbolic
   bytes are either actual data indicated by the Byte constructor or
   'symbolic instructions' that take up eight bytes for the purposes of
   layout.

   The symbolic bytes abstract away from the details of how
   instructions are represented in memory.  Each instruction takes
   exactly eight consecutive bytes, where the first byte InsB0 stores
   the actual instruction, and the next sevent bytes are InsFrag
   elements, which aren't valid data.

   For example, the two-instruction sequence:
        at&t syntax             ocaml syntax
      movq %rdi, (%rsp)       Movq,  [~%Rdi; Ind2 Rsp]
      decq %rdi               Decq,  [~%Rdi]

   is represented by the following elements of the mem array (starting
   at address 0x400000):

       0x400000 :  InsB0 (Movq,  [~%Rdi; Ind2 Rsp])
       0x400001 :  InsFrag
       0x400002 :  InsFrag
       0x400003 :  InsFrag
       0x400004 :  InsFrag
       0x400005 :  InsFrag
       0x400006 :  InsFrag
       0x400007 :  InsFrag
       0x400008 :  InsB0 (Decq,  [~%Rdi])
       0x40000A :  InsFrag
       0x40000B :  InsFrag
       0x40000C :  InsFrag
       0x40000D :  InsFrag
       0x40000E :  InsFrag
       0x40000F :  InsFrag
       0x400010 :  InsFrag
*)
type sbyte = InsB0 of ins       (* 1st byte of an instruction *)
           | InsFrag            (* 2nd - 8th bytes of an instruction *)
           | Byte of char       (* non-instruction byte *)

(* memory maps addresses to symbolic bytes *)
type mem = sbyte array

(* Flags for condition codes *)
type flags = { mutable fo : bool
             ; mutable fs : bool
             ; mutable fz : bool
             }

(* Register files *)
type regs = int64 array

(* Complete machine state *)
type mach = { flags : flags
            ; regs : regs
            ; mem : mem
            }

(* simulator helper functions ----------------------------------------------- *)

(* The index of a register in the regs array *)
let rind : reg -> int = function
  | Rip -> 16
  | Rax -> 0  | Rbx -> 1  | Rcx -> 2  | Rdx -> 3
  | Rsi -> 4  | Rdi -> 5  | Rbp -> 6  | Rsp -> 7
  | R08 -> 8  | R09 -> 9  | R10 -> 10 | R11 -> 11
  | R12 -> 12 | R13 -> 13 | R14 -> 14 | R15 -> 15

(* Helper functions for reading/writing sbytes *)

(* Convert an int64 to its sbyte representation *)
let sbytes_of_int64 (i:int64) : sbyte list =
  let open Char in 
  let open Int64 in
  List.map (fun n -> Byte (shift_right i n |> logand 0xffL |> to_int |> chr))
           [0; 8; 16; 24; 32; 40; 48; 56]

(* Convert an sbyte representation to an int64 *)
let int64_of_sbytes (bs:sbyte list) : int64 =
  let open Char in
  let open Int64 in
  let f b i = match b with
    | Byte c -> logor (shift_left i 8) (c |> code |> of_int)
    | _ -> 0L
  in
  List.fold_right f bs 0L

(* Convert a string to its sbyte representation *)
let sbytes_of_string (s:string) : sbyte list =
  let rec loop acc = function
    | i when i < 0 -> acc
    | i -> loop (Byte s.[i]::acc) (pred i)
  in
  loop [Byte '\x00'] @@ String.length s - 1

(* Serialize an instruction to sbytes *)
let sbytes_of_ins (op, args:ins) : sbyte list =
  let check = function
    | Imm (Lbl _) | Ind1 (Lbl _) | Ind3 (Lbl _, _) -> 
      invalid_arg "sbytes_of_ins: tried to serialize a label!"
    | o -> ()
  in
  List.iter check args;
  [InsB0 (op, args); InsFrag; InsFrag; InsFrag;
   InsFrag; InsFrag; InsFrag; InsFrag]

(* Serialize a data element to sbytes *)
let sbytes_of_data : data -> sbyte list = function
  | Quad (Lit i) -> sbytes_of_int64 i
  | Asciz s -> sbytes_of_string s
  | Quad (Lbl _) -> invalid_arg "sbytes_of_data: tried to serialize a label!"


(* It might be useful to toggle printing of intermediate states of your 
   simulator. Our implementation uses this mutable flag to turn on/off
   printing.  For instance, you might write something like:

     [if !debug_simulator then print_endline @@ string_of_ins u; ...]

*)
let debug_simulator = ref false

(* Interpret a condition code with respect to the given flags. *)
let interp_cnd ({fo; fs; fz}: flags) (c : cnd) : bool =  
    match c with 
    | Neq -> if (not fz) then true else false
    | Eq -> if fz then true else false 
    | Lt -> if (fs != fo) then true else false
    | Le -> if (fs != fo || fz) then true else false
    | Gt -> if (fs == fo && not fz) then true else false
    | Ge -> if (fs == fo) then true else false
 


(* Maps an X86lite address into Some OCaml array index,
   or None if the address is not within the legal address space. *)
let map_addr (addr:quad) : int option =
    let int1 = Int64.compare addr mem_bot in
    let int2 = Int64.compare addr mem_top in
    let res = Int64.to_int (Int64.sub addr mem_bot) in
    if (int1 >= 0 && int2 < 0) then Some res else None

(* Simulates one step of the machine:
    - fetch the instruction at %rip
    - compute the source and/or destination information from the operands
    - simulate the instruction semantics
    - update the registers and/or memory appropriately
    - set the condition flags
*)

(* Update Flags *)
let zf_checker (fl: flags) (i: int64) : unit =
  if i = 0L then fl.fz <- true else fl.fz <- false

let sf_checker (fl: flags) (i: int64) : unit =
  if i < 0L then fl.fs <- false else fl.fs <- true
  
let update_flag (m: mach) (i: Int64_overflow.t): unit =
  m.flags.fo <- i.overflow;
  zf_checker m.flags i.value;
  sf_checker m.flags i.value; 

 
(* Interpreter Type *)
type opr = Lit of quad | Reg of reg | Addr of quad

(* Some Helpful Memory Manipulation Functions *)

let mwrite (m: mach) (i: int) (q: quad) : unit = 
  Array.blit (Array.of_list (sbytes_of_int64 q)) 0 m.mem i 8

let i64ofmem (m: mach) (i: int) : int64 =
  int64_of_sbytes (Array.to_list (Array.sub m.mem i 8))

let perform_opr (m: mach) (op: operand) : opr =
  match op with
  | Imm i -> 
    (match i with
    | Lit lt -> Lit lt
    | Lbl lbl -> raise (X86lite_bad_label))
  | Ind1 i1 -> 
    (match i1 with
    | Lit lt -> Lit lt
    | Lbl lbl -> raise (X86lite_bad_label))
  | Ind2 i2 -> Addr m.regs.(rind i2)
  | Ind3 (i3, r) -> 
    (match i3 with 
    | Lit lt -> Addr (Int64.add m.regs.(rind r) lt)
    | Lbl lbl -> raise (X86lite_bad_label))
  | Reg r -> Reg r

(* Getting opr values and writing to their locations *)

let evalopr (m: mach) (op: opr) : int64 =
  match op with
    | Addr a -> 
      (match map_addr a with
      | Some i -> i64ofmem m i
      | None -> raise X86lite_segfault)
      | Reg r -> m.regs.(rind r)
    | Lit lt -> lt

let valwrite (m: mach) (op: opr) (res: int64) : unit = 
  match op with
  | Addr a -> (match map_addr a with
              | Some i -> mwrite m i res
              | None -> raise X86lite_segfault)
  | Reg r -> m.regs.(rind r) <- res
  | Lit lt -> raise X86lite_segfault

let perform_opr_dest (op: int64 -> int64 -> Int64_overflow.t) (o: opr) (res: int64) 
    (m:mach) (flags: bool): unit = 
  match o with
  | Addr a -> 
    (match map_addr a with
    | None -> raise X86lite_segfault 
    | Some i -> (let temp = op (i64ofmem m i) res in
        if flags then update_flag m temp; 
        mwrite m i temp.value))
  | Reg r -> 
    (let temp = op m.regs.(rind r) res in 
    m.regs.(rind r) <- temp.value;
    if flags then update_flag m temp)
  | Lit lt -> raise X86lite_segfault

(* Math Helpers *)

let perform_two (m: mach) (op: int64 -> int64 -> Int64_overflow.t) (ops: operand list) : unit = 
    let val1 = perform_opr m (List.hd ops) in 
    let val2 = perform_opr m (List.nth ops 1) in
    let res = evalopr m val1 in
    perform_opr_dest op val2 res m true

let perform_arith (m:mach) (op: int64 -> int64 -> Int64_overflow.t) (ops: operand list) : unit =
    perform_two m op ops

(* Logic Helpers *)

let perform_logic (m:mach) (op: int64 -> int64 -> int64) (ops: operand list) : unit =
  let compute = 
    (fun a b -> 
      let comp = op a b in 
      let rcd : Int64_overflow.t = 
      { value = comp; overflow = false } in
      rcd)
    in perform_two m compute ops

let inst_shifter (m: mach) (ops: operand list) : int = 
  match (List.hd ops) with
  | Imm i -> (match i with
                | Lit lt -> Int64.to_int lt
                | Lbl lbl -> raise X86lite_bad_label)          
  | Reg r -> (match r with
                | Rcx -> Int64.to_int m.regs.(rind Rcx)
                | _ -> raise X86lite_bad_inst)
  | _ -> raise X86lite_bad_inst


  
let step (m: mach) : unit =
  match map_addr m.regs.(rind Rip) with
  | Some i -> 
      (match m.mem.(i) with
        | InsB0 inst -> (
          let opc, ops = inst in 
            m.regs.(rind Rip) <- (Int64.add m.regs.(rind Rip) 8L);
            match opc with
            | Movq -> let v1 = perform_opr m (List.hd ops) in 
                      let v2 = perform_opr m (List.nth ops 1) in
                      let res = evalopr m v1 in
                      valwrite m v2 res;
            | Pushq -> m.regs.(rind Rsp) <- (Int64.sub m.regs.(rind Rsp) 8L);
                       (match map_addr m.regs.(rind Rsp) with
                       | Some i ->
                         let v1 = perform_opr m (List.hd ops) in 
                         let res = evalopr m v1 in 
                         mwrite m i res
                       | None -> raise X86lite_segfault);
            | Popq -> (match map_addr m.regs.(rind Rsp) with
                       | Some i -> 
                         let v1 = i64ofmem m i in 
                         let v2 = perform_opr m (List.hd ops) in 
                          valwrite m v2 v1;
                          m.regs.(rind Rsp) <- (Int64.add m.regs.(rind Rsp) 8L);
                       | None -> raise X86lite_segfault)
            | Leaq -> (match (List.hd ops) with
                       | Imm i -> raise X86lite_bad_inst
                       | Reg r -> raise X86lite_bad_inst
                       | _ -> let v1 = perform_opr m (List.hd ops) in
                              let res = evalopr m v1 in
                              let v2 = perform_opr m (List.nth ops 1) in
                              valwrite m v2 res)
            | Incq -> let op = Int64_overflow.add in
                      let v1 = perform_opr m (List.hd ops) in 
                      perform_opr_dest op v1 1L m true;
            | Decq -> let op = Int64_overflow.sub in 
                      let v1 = perform_opr m (List.hd ops) in 
                      perform_opr_dest op v1 1L m true;
            | Negq -> let op = Int64_overflow.neg in
                      let v2 = perform_opr m (List.hd ops) in
                      (match v2 with
                        | Reg r -> 
                          (let temp = op m.regs.(rind r) in 
                          update_flag m temp; m.regs.(rind r) <- temp.value)
                        | Addr a -> 
                          (match map_addr a with 
                            | Some i -> (let temp = op (i64ofmem m i) in
                                          update_flag m temp; mwrite m i temp.value)
                            | None -> raise X86lite_segfault)
                        | Lit lt -> raise X86lite_segfault);
            | Notq -> let op = Int64.lognot in
                      let v2 = perform_opr m (List.hd ops) in
                      (match v2 with
                      | Reg r -> m.regs.(rind r) <- op m.regs.(rind r)
                      | Addr a -> 
                        (match map_addr a with 
                          | Some i -> (let temp = op (i64ofmem m i) in
                                          mwrite m i temp)
                          | None -> raise X86lite_segfault)
                      | Lit lt -> raise X86lite_segfault);
            | Imulq -> perform_arith m Int64_overflow.mul ops
            | Addq -> perform_arith m Int64_overflow.add ops
            | Subq -> perform_arith m Int64_overflow.sub ops
            | Andq -> perform_logic m Int64.logand ops
            | Xorq -> perform_logic m Int64.logxor ops
            | Orq -> perform_logic m Int64.logor ops
            | Shlq -> let op = Int64.shift_left in
                      let shift = inst_shifter m ops in
                      let v1 = perform_opr m (List.nth ops 1) in
                      let v2 = evalopr m v1 in
                      let vshift = op v2 shift in
                      (valwrite m v1 vshift;
                        if shift != 0 then zf_checker m.flags vshift; sf_checker m.flags vshift;
                        if shift == 1 then m.flags.fo <- 
                            ((Int64.shift_right_logical v2 63) == 
                              (Int64.logand (Int64.shift_right_logical v2 62) 1L)));
            | Sarq -> let op = Int64.shift_right in
                      let shift = inst_shifter m ops in
                      let v1 = perform_opr m (List.nth ops 1) in
                      let v2 = evalopr m v1 in
                      let vshift = op v2 shift in
                      (valwrite m v1 vshift;
                        if shift != 0 then zf_checker m.flags vshift; sf_checker m.flags vshift;
                        if shift == 1 then m.flags.fo <- false);
            | Shrq -> let op = Int64.shift_right_logical in
                      let shift = inst_shifter m ops in
                      let v1 = perform_opr m (List.nth ops 1) in
                      let v2 = evalopr m v1 in
                      let vshift = op v2 shift in
                      (valwrite m v1 vshift;
                        let lstsig = if (Int64.shift_right_logical vshift 63) = 1L 
                            then true else false in 
                        let fstsig = if (Int64.shift_right_logical v2 63) = 1L 
                            then true else false in 
                      m.flags.fs <- lstsig;
                      if vshift = 0L then m.flags.fz <- true else m.flags.fz <- false;
                      if shift == 1 then m.flags.fo <- fstsig);
            | Jmp -> let v1 = perform_opr m (List.hd ops) in 
                     let res = evalopr m v1 in
                     m.regs.(rind Rip) <- res
            | Cmpq -> let op = Int64_overflow.sub in
                      let v1 = perform_opr m (List.hd ops) in 
                      let v2 = perform_opr m (List.nth ops 1) in
                      let res_fst = evalopr m v1 in
                      let res_snd = evalopr m v2 in
                      update_flag m (op res_snd res_fst);
            | Callq -> m.regs.(rind Rsp) <- (Int64.sub m.regs.(rind Rsp) 8L);
                       let pos_rsp = match map_addr m.regs.(rind Rsp) with
                            | Some i -> i 
                            | None -> raise X86lite_segfault in 
                       mwrite m pos_rsp m.regs.(rind Rip);
                       let v1 = perform_opr m (List.hd ops) in 
                       let res = evalopr m v1 in
                       m.regs.(rind Rip) <- res
            | Retq -> let pos_rsp = match map_addr m.regs.(rind Rsp) with
                            | Some i -> i
                            | None -> raise X86lite_segfault in
                      let mval = i64ofmem m pos_rsp in 
                      m.regs.(rind Rip) <- mval;
                      m.regs.(rind Rsp) <- (Int64.add m.regs.(rind Rsp) 8L)
            | J cnd -> if interp_cnd m.flags cnd then 
                       let v1 = perform_opr m (List.hd ops) in 
                       let res = evalopr m v1 in 
                       m.regs.(rind Rip) <- res
            | Set cnd -> let dest = perform_opr m (List.hd ops) in
                         let sb_dest = sbytes_of_int64 (evalopr m dest) in
                         let sb_new = if interp_cnd m.flags cnd 
                                         then Char.chr 1 else Char.chr 0 in
                         let sb_arr_new = List.mapi 
                                          (fun i x -> if i = 0 then Byte(sb_new) else x) 
                                          sb_dest in
                         valwrite m dest (int64_of_sbytes sb_arr_new))
        | _ -> ())
    | None -> raise X86lite_segfault



(* Runs the machine until the rip register reaches a designated
   memory address. Returns the contents of %rax when the 
   machine halts. *)
let run (m:mach) : int64 = 
  while m.regs.(rind Rip) <> exit_addr do step m done;
  m.regs.(rind Rax)

(* assembling and linking --------------------------------------------------- *)

(* A representation of the executable *)
type exec = { entry    : quad              (* address of the entry point *)
            ; text_pos : quad              (* starting address of the code *)
            ; data_pos : quad              (* starting address of the data *)
            ; text_seg : sbyte list        (* contents of the text segment *)
            ; data_seg : sbyte list        (* contents of the data segment *)
            }

(* Assemble should raise this when a label is used but not defined *)
exception Undefined_sym of lbl

(* Assemble should raise this when a label is defined more than once *)
exception Redefined_sym of lbl

(* Convert an X86 program into an object file:
   - separate the text and data segments
   - compute the size of each segment
      Note: the size of an Asciz string section is (1 + the string length)
            due to the null terminator

   - resolve the labels to concrete addresses and 'patch' the instructions to 
     replace Lbl values with the corresponding Imm values.

   - the text segment starts at the lowest address
   - the data segment starts after the text segment

  HINT: List.fold_left and List.fold_right are your friends.
 *)
let assemble (p:prog) : exec =
  let txt_counter = 
    fun el -> match el.asm with 
                | Data dt -> 0L
                | Text txt -> 
                List.fold_left 
                (fun ad_acc txt -> Int64.add ad_acc ins_size) 0L txt
    in
  let tsz = 
    List.fold_left 
    (fun ad_acc el -> Int64.add ad_acc (txt_counter el)) 0L p in
  let tbl = Hashtbl.create 654321 in
  let rec setthetable program ad_acc : unit = 
    match program with
    | [] -> ()
    | hd::tl -> Hashtbl.add tbl hd.lbl ad_acc;
        if List.length (Hashtbl.find_all tbl hd.lbl) > 1 
        then raise (Redefined_sym hd.lbl)
        else let l = Int64.of_int (match hd.asm with 
            | Text txt -> List.length txt 
            | Data dt -> List.length dt) 
        in 
        let szseg = Int64.mul ins_size l in 
        setthetable tl (Int64.add ad_acc szseg) in
    (setthetable p mem_bot;
    let getlabel i = try Hashtbl.find tbl i with 
        | Not_found -> raise (Undefined_sym i) 
    in
    let swaptext (op, inst: ins) : ins = 
      let swaplabel i = 
        match i with 
        | Imm (Lbl l1) -> Imm (Lit (getlabel l1))
        | Ind1 (Lbl l2) -> Ind1 (Lit (getlabel l2))
        | Ind3 (Lbl l3, r) -> Ind3 (Lit (getlabel l3), r)
        | _ -> i 
      in
      op, (List.map swaplabel inst) 
    in
    let swapdt (dt: data) : data = 
      match dt with 
      | Quad (Lbl l) -> Quad (Lit (getlabel l))
      | _ -> dt 
    in 
    let txtapp = 
      fun el -> match el.asm with 
        | Text txt -> List.fold_left 
          (fun acc text -> acc @ 
            sbytes_of_ins (swaptext text)) [] txt 
        | Data dt -> [] 
    in
    let dtapp = 
      fun el -> match el.asm with 
          | Text txt -> []
          | Data dt -> List.fold_left 
              (fun acc data -> acc @ 
              sbytes_of_data (swapdt data)) [] dt 
    in
  {
    entry = getlabel "main"; 
    text_pos = mem_bot; 
    data_pos = Int64.add mem_bot tsz; 
    text_seg = List.fold_left 
                (fun acc el -> acc @ txtapp el) [] p; 
    data_seg = List.fold_left 
                (fun acc el -> acc @ dtapp el) [] p;
  })

(* Convert an object file into an executable machine state. 
    - allocate the mem array
    - set up the memory state by writing the symbolic bytes to the 
      appropriate locations 
    - create the inital register state
      - initialize rip to the entry point address
      - initializes rsp to the last word in memory 
      - the other registers are initialized to 0
    - the condition code flags start as 'false'

  Hint: The Array.make, Array.blit, and Array.of_list library functions 
  may be of use.
*)
let load {entry; text_pos; data_pos; text_seg; data_seg} : mach = 
  let mtemp = (Array.make mem_size (Byte '\x00')) in
  let txt = 
    match map_addr text_pos with
    | Some a -> a 
    | None -> raise X86lite_segfault 
  in
  let dt = 
    match map_addr data_pos with
    | Some a -> a
    | None -> raise X86lite_segfault
  in
  let exit = 
    match map_addr (Int64.sub mem_top 8L) with
    | Some a -> a 
    | None -> raise X86lite_segfault
  in
  Array.blit (Array.of_list text_seg) 0 mtemp txt (List.length text_seg);
  Array.blit (Array.of_list data_seg) 0 mtemp dt (List.length data_seg);
  Array.blit (Array.of_list (sbytes_of_int64 exit_addr)) 0 mtemp exit 8;
  let rg = Array.make nregs 0L in
  rg.(rind Rip) <- entry;
  rg.(rind Rsp) <- Int64.sub mem_top 8L;
  { 
    flags = {fo = false; fs = false; fz = false};
    mem = mtemp;
    regs = rg
  }


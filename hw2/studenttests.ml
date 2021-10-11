open Assert
open X86
open Simulator
open Asm

(* These tests are provided by you -- they will be graded manually *)
(* You should also add additional test cases here to help you   *)
(* debug your program.*)
let recursive_sum_up_to n = [ text "rec sum"
                        [
                          Subq, [~$8; ~%Rsp];
                          Cmpq, [~$0; ~%Rdi];
                          J Eq, [~$$"exit"];
                          Movq,  [~%Rdi; Ind2 Rsp];
                          Decq,  [~%Rdi];
                          Callq, [~$$"rec sum"];
                          Addq, [Ind2 Rsp; ~%Rax];
                          Addq,  [~$8; ~%Rsp];
                          Retq, []
                        ];
                        text "exit"
                        [ Movq,  [~$1; ~%Rax];
                          Addq,  [~$8; ~%Rsp];
                          Retq,  [] 
                        ];
                        gtext "main"
                        [
                          Movq, [~$n; ~%Rdi];
                          Callq, [~$$"rec sum"];
                          Retq, []
                        ]
] 

let recsum (n : int) = 
  let tmp = assemble(recursive_sum_up_to n) in
  load tmp

let provided_tests : suite = [
  Test ("Student-Provided Big Test for Part III: Score recorded as PartIIITestCase", [
      ("test1", assert_eqf (fun() -> run (recsum 5)) 15L);
      ("test1", assert_eqf (fun() -> run (recsum 10)) 55L);
  ]);
]


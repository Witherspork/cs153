open Ast
open Astlib
open Assert
open Driver
open Gradedtests

(* These tests are provided by you -- they will be graded manually *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)



let stair_tests = [
  ("hw4programs/stairClimb.oat", "", "233");
]


let tests : suite = [
  GradedTest("stair tests", 0, executed_oat_file stair_tests);
] 

let provided_tests : suite = tests 
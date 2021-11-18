; generated from: hw4programs/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1
@_const_of_global582 = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl574 = alloca i64
  %_allocated_arg570 = alloca i64
  store i64 %argc, i64* %_allocated_arg570
  %_allocated_arg572 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg572
  store i64 0, i64* %_id_of_decl574
  %_exp_of_id576 = load i1, i1* @b
  br i1 %_exp_of_id576, label %_branch_of_eq579, label %_branch_of_neq580
_branch_of_eq579:
  store i64 1, i64* %_id_of_decl574
  br label %_merge578
_branch_of_neq580:
  br label %_merge578
_merge578:
  %_exp_of_id581 = load i64, i64* %_id_of_decl574
  ret i64 %_exp_of_id581
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)

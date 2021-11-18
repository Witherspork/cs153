; generated from: hw4programs/globals2.oat
target triple = "x86_64-unknown-linux"
@y = global i1 1
@_const_of_global238 = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_allocated_arg230 = alloca i64
  store i64 %argc, i64* %_allocated_arg230
  %_allocated_arg232 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_allocated_arg232
  %_exp_of_id234 = load i1, i1* @y
  br i1 %_exp_of_id234, label %_branch_of_eq236, label %_branch_of_neq237
_branch_of_eq236:
  ret i64 17
_branch_of_neq237:
  br label %_merge235
_merge235:
  ret i64 15
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

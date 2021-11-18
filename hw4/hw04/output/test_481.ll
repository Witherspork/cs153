; generated from: hw4programs/run60.oat
target triple = "x86_64-unknown-linux"
@i = global i64 3
@_const_of_global1069 = global i64 3

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_allocated_arg1063 = alloca i64
  store i64 %argc, i64* %_allocated_arg1063
  %_allocated_arg1065 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg1065
  store i64 341, i64* @i
  %_exp_of_id1068 = load i64, i64* @i
  ret i64 %_exp_of_id1068
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

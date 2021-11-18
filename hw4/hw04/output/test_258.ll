; generated from: hw4programs/run61.oat
target triple = "x86_64-unknown-linux"
@s = global i8* bitcast ([10 x i8]* @_const_of_global1077 to i8*)
@_const_of_global1077 = global [10 x i8] c"compilers\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_allocated_arg1071 = alloca i64
  store i64 %argc, i64* %_allocated_arg1071
  %_allocated_arg1073 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg1073
  %_exp_of_id1076 = load i8*, i8** @s
  call void @print_string(i8* %_exp_of_id1076)
  ret i64 0
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

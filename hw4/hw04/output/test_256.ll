; generated from: hw4programs/run50.oat
target triple = "x86_64-unknown-linux"
@_exp_of_string1060 = global [6 x i8] c"abcde\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_allocated_arg1055 = alloca i64
  store i64 %argc, i64* %_allocated_arg1055
  %_allocated_arg1057 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg1057
  %_exp_of_bit1061 = bitcast [6 x i8]* @_exp_of_string1060 to i8*
  call void @print_string(i8* %_exp_of_bit1061)
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

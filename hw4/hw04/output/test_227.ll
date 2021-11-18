; generated from: hw4programs/globals6.oat
target triple = "x86_64-unknown-linux"
@_exp_of_string270 = global [7 x i8] c"hello!\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_id_of_decl269 = alloca i8*
  %_allocated_arg265 = alloca i64
  store i64 %argc, i64* %_allocated_arg265
  %_allocated_arg267 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_allocated_arg267
  %_exp_of_bit271 = bitcast [7 x i8]* @_exp_of_string270 to i8*
  store i8* %_exp_of_bit271, i8** %_id_of_decl269
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

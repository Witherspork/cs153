; generated from: hw4programs/lib8.oat
target triple = "x86_64-unknown-linux"
@_exp_of_string3019 = global [13 x i8] c"Hello world!\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl3018 = alloca i8*
  %_allocated_arg3014 = alloca i64
  store i64 %argc, i64* %_allocated_arg3014
  %_allocated_arg3016 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg3016
  %_exp_of_bit3020 = bitcast [13 x i8]* @_exp_of_string3019 to i8*
  store i8* %_exp_of_bit3020, i8** %_id_of_decl3018
  %_exp_of_id3023 = load i8*, i8** %_id_of_decl3018
  call void @print_string(i8* %_exp_of_id3023)
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

; generated from: hw4programs/path2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl302 = alloca i64
  %_id_of_decl304 = alloca i64
  %_allocated_arg298 = alloca i64
  store i64 %argc, i64* %_allocated_arg298
  %_allocated_arg300 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg300
  store i64 17, i64* %_id_of_decl302
  store i64 18, i64* %_id_of_decl304
  %_exp_of_id306 = load i64, i64* %_id_of_decl302
  %_exp_of_id307 = load i64, i64* %_id_of_decl304
  %_exp_of_bop308 = add i64 %_exp_of_id306, %_exp_of_id307
  ret i64 %_exp_of_bop308
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

; generated from: hw4programs/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl2121 = alloca { i64, [0 x i64] }*
  %_id_of_decl2131 = alloca i8*
  %_allocated_arg2117 = alloca i64
  store i64 %argc, i64* %_allocated_arg2117
  %_allocated_arg2119 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg2119
  %_raw_array2122 = call i64* @oat_alloc_array(i64 3)
  %_array2123 = bitcast i64* %_raw_array2122 to { i64, [0 x i64] }*
  %_id_of_gep2124 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2123, i32 0, i32 1, i32 0
  store i64 110, i64* %_id_of_gep2124
  %_id_of_gep2126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2123, i32 0, i32 1, i32 1
  store i64 110, i64* %_id_of_gep2126
  %_id_of_gep2128 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2123, i32 0, i32 1, i32 2
  store i64 110, i64* %_id_of_gep2128
  store { i64, [0 x i64] }* %_array2123, { i64, [0 x i64] }** %_id_of_decl2121
  %_exp_of_id2133 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl2121
  %_exp_of_call2132 = call i8* @string_of_array({ i64, [0 x i64] }* %_exp_of_id2133)
  store i8* %_exp_of_call2132, i8** %_id_of_decl2131
  %_exp_of_id2136 = load i8*, i8** %_id_of_decl2131
  call void @print_string(i8* %_exp_of_id2136)
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

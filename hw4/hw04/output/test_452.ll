; generated from: hw4programs/globals7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [0 x i64] }* @_const_of_global290 to { i64, [0 x i64] }*)
@_const_of_global290 = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl278 = alloca { i64, [0 x i64] }*
  %_allocated_arg274 = alloca i64
  store i64 %argc, i64* %_allocated_arg274
  %_allocated_arg276 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg276
  %_raw_array279 = call i64* @oat_alloc_array(i64 3)
  %_array280 = bitcast i64* %_raw_array279 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array280, { i64, [0 x i64] }** %_id_of_decl278
  %_exp_of_id282 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl278
  store { i64, [0 x i64] }* %_exp_of_id282, { i64, [0 x i64] }** @arr
  %_exp_of_id285 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl278
  %_id_of_gep_exp286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id285, i32 0, i32 1, i32 2
  store i64 3, i64* %_id_of_gep_exp286
  %_exp_of_id289 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_id_of_index287 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id289, i32 0, i32 1, i32 2
  %_id_of_load288 = load i64, i64* %_id_of_index287
  ret i64 %_id_of_load288
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

; generated from: hw4programs/run8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl1383 = alloca { i64, [0 x i64] }*
  %_allocated_arg1379 = alloca i64
  store i64 %argc, i64* %_allocated_arg1379
  %_allocated_arg1381 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg1381
  %_raw_array1384 = call i64* @oat_alloc_array(i64 2)
  %_array1385 = bitcast i64* %_raw_array1384 to { i64, [0 x i64] }*
  %_id_of_gep1386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1385, i32 0, i32 1, i32 0
  store i64 1, i64* %_id_of_gep1386
  %_id_of_gep1388 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1385, i32 0, i32 1, i32 1
  store i64 2, i64* %_id_of_gep1388
  store { i64, [0 x i64] }* %_array1385, { i64, [0 x i64] }** %_id_of_decl1383
  %_exp_of_id1393 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl1383
  %_id_of_index1391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id1393, i32 0, i32 1, i32 1
  %_id_of_load1392 = load i64, i64* %_id_of_index1391
  ret i64 %_id_of_load1392
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

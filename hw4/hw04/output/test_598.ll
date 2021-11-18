; generated from: hw4programs/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl1398 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_allocated_arg1394 = alloca i64
  store i64 %argc, i64* %_allocated_arg1394
  %_allocated_arg1396 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg1396
  %_raw_array1399 = call i64* @oat_alloc_array(i64 2)
  %_array1400 = bitcast i64* %_raw_array1399 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1401 = call i64* @oat_alloc_array(i64 2)
  %_array1402 = bitcast i64* %_raw_array1401 to { i64, [0 x i64] }*
  %_id_of_gep1403 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1402, i32 0, i32 1, i32 0
  store i64 1, i64* %_id_of_gep1403
  %_id_of_gep1405 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1402, i32 0, i32 1, i32 1
  store i64 2, i64* %_id_of_gep1405
  %_raw_array1407 = call i64* @oat_alloc_array(i64 2)
  %_array1408 = bitcast i64* %_raw_array1407 to { i64, [0 x i64] }*
  %_id_of_gep1409 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1408, i32 0, i32 1, i32 0
  store i64 3, i64* %_id_of_gep1409
  %_id_of_gep1411 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1408, i32 0, i32 1, i32 1
  store i64 4, i64* %_id_of_gep1411
  %_id_of_gep1413 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1400, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1402, { i64, [0 x i64] }** %_id_of_gep1413
  %_id_of_gep1415 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1400, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1408, { i64, [0 x i64] }** %_id_of_gep1415
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1400, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1398
  %_exp_of_id1422 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1398
  %_id_of_index1420 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1422, i32 0, i32 1, i32 1
  %_id_of_load1421 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index1420
  %_id_of_index1418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load1421, i32 0, i32 1, i32 1
  %_id_of_load1419 = load i64, i64* %_id_of_index1418
  ret i64 %_id_of_load1419
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

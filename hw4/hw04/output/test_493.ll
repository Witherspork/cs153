; generated from: hw4programs/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_allocated_arg1460 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_allocated_arg1460
  %_exp_of_id1462 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg1460
  ret { i64, [0 x i64] }* %_exp_of_id1462
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl1427 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_id_of_decl1451 = alloca { i64, [0 x i64] }*
  %_allocated_arg1423 = alloca i64
  store i64 %argc, i64* %_allocated_arg1423
  %_allocated_arg1425 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg1425
  %_raw_array1428 = call i64* @oat_alloc_array(i64 2)
  %_array1429 = bitcast i64* %_raw_array1428 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1430 = call i64* @oat_alloc_array(i64 3)
  %_array1431 = bitcast i64* %_raw_array1430 to { i64, [0 x i64] }*
  %_id_of_gep1432 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1431, i32 0, i32 1, i32 0
  store i64 1, i64* %_id_of_gep1432
  %_id_of_gep1434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1431, i32 0, i32 1, i32 1
  store i64 2, i64* %_id_of_gep1434
  %_id_of_gep1436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1431, i32 0, i32 1, i32 2
  store i64 3, i64* %_id_of_gep1436
  %_raw_array1438 = call i64* @oat_alloc_array(i64 3)
  %_array1439 = bitcast i64* %_raw_array1438 to { i64, [0 x i64] }*
  %_id_of_gep1440 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1439, i32 0, i32 1, i32 0
  store i64 4, i64* %_id_of_gep1440
  %_id_of_gep1442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1439, i32 0, i32 1, i32 1
  store i64 5, i64* %_id_of_gep1442
  %_id_of_gep1444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1439, i32 0, i32 1, i32 2
  store i64 6, i64* %_id_of_gep1444
  %_id_of_gep1446 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1429, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1431, { i64, [0 x i64] }** %_id_of_gep1446
  %_id_of_gep1448 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1429, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1439, { i64, [0 x i64] }** %_id_of_gep1448
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1429, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1427
  %_exp_of_id1455 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1427
  %_id_of_index1453 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1455, i32 0, i32 1, i32 1
  %_id_of_load1454 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index1453
  %_exp_of_call1452 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_id_of_load1454)
  store { i64, [0 x i64] }* %_exp_of_call1452, { i64, [0 x i64] }** %_id_of_decl1451
  %_exp_of_id1459 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl1451
  %_id_of_index1457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id1459, i32 0, i32 1, i32 1
  %_id_of_load1458 = load i64, i64* %_id_of_index1457
  ret i64 %_id_of_load1458
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

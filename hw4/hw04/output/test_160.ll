; generated from: hw4programs/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null
@_const_of_global1378 = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_allocated_arg1314 = alloca i64
  store i64 %argc, i64* %_allocated_arg1314
  %_allocated_arg1316 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg1316
  %_raw_array1318 = call i64* @oat_alloc_array(i64 3)
  %_array1319 = bitcast i64* %_raw_array1318 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_raw_array1320 = call i64* @oat_alloc_array(i64 2)
  %_array1321 = bitcast i64* %_raw_array1320 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1322 = call i64* @oat_alloc_array(i64 2)
  %_array1323 = bitcast i64* %_raw_array1322 to { i64, [0 x i64] }*
  %_id_of_gep1324 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1323, i32 0, i32 1, i32 0
  store i64 1, i64* %_id_of_gep1324
  %_id_of_gep1326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1323, i32 0, i32 1, i32 1
  store i64 2, i64* %_id_of_gep1326
  %_raw_array1328 = call i64* @oat_alloc_array(i64 2)
  %_array1329 = bitcast i64* %_raw_array1328 to { i64, [0 x i64] }*
  %_id_of_gep1330 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1329, i32 0, i32 1, i32 0
  store i64 3, i64* %_id_of_gep1330
  %_id_of_gep1332 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1329, i32 0, i32 1, i32 1
  store i64 4, i64* %_id_of_gep1332
  %_id_of_gep1334 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1321, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1323, { i64, [0 x i64] }** %_id_of_gep1334
  %_id_of_gep1336 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1321, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1329, { i64, [0 x i64] }** %_id_of_gep1336
  %_raw_array1338 = call i64* @oat_alloc_array(i64 1)
  %_array1339 = bitcast i64* %_raw_array1338 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1340 = call i64* @oat_alloc_array(i64 1)
  %_array1341 = bitcast i64* %_raw_array1340 to { i64, [0 x i64] }*
  %_id_of_gep1342 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1341, i32 0, i32 1, i32 0
  store i64 5, i64* %_id_of_gep1342
  %_id_of_gep1344 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1339, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1341, { i64, [0 x i64] }** %_id_of_gep1344
  %_raw_array1346 = call i64* @oat_alloc_array(i64 2)
  %_array1347 = bitcast i64* %_raw_array1346 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1348 = call i64* @oat_alloc_array(i64 2)
  %_array1349 = bitcast i64* %_raw_array1348 to { i64, [0 x i64] }*
  %_id_of_gep1350 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1349, i32 0, i32 1, i32 0
  store i64 10, i64* %_id_of_gep1350
  %_id_of_gep1352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1349, i32 0, i32 1, i32 1
  store i64 20, i64* %_id_of_gep1352
  %_raw_array1354 = call i64* @oat_alloc_array(i64 2)
  %_array1355 = bitcast i64* %_raw_array1354 to { i64, [0 x i64] }*
  %_id_of_gep1356 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1355, i32 0, i32 1, i32 0
  store i64 30, i64* %_id_of_gep1356
  %_id_of_gep1358 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1355, i32 0, i32 1, i32 1
  store i64 40, i64* %_id_of_gep1358
  %_id_of_gep1360 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1347, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1349, { i64, [0 x i64] }** %_id_of_gep1360
  %_id_of_gep1362 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1347, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1355, { i64, [0 x i64] }** %_id_of_gep1362
  %_id_of_gep1364 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1319, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1321, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_gep1364
  %_id_of_gep1366 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1319, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1339, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_gep1366
  %_id_of_gep1368 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1319, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1347, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_gep1368
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1319, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_exp_of_id1377 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_id_of_index1375 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_exp_of_id1377, i32 0, i32 1, i32 2
  %_id_of_load1376 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_index1375
  %_id_of_index1373 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_id_of_load1376, i32 0, i32 1, i32 0
  %_id_of_load1374 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index1373
  %_id_of_index1371 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load1374, i32 0, i32 1, i32 1
  %_id_of_load1372 = load i64, i64* %_id_of_index1371
  ret i64 %_id_of_load1372
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

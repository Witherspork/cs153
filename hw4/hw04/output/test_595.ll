; generated from: hw4programs/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null
@_const_of_global1312 = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl1287 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_allocated_arg1283 = alloca i64
  store i64 %argc, i64* %_allocated_arg1283
  %_allocated_arg1285 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg1285
  %_raw_array1288 = call i64* @oat_alloc_array(i64 2)
  %_array1289 = bitcast i64* %_raw_array1288 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1290 = call i64* @oat_alloc_array(i64 2)
  %_array1291 = bitcast i64* %_raw_array1290 to { i64, [0 x i64] }*
  %_id_of_gep1292 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1291, i32 0, i32 1, i32 0
  store i64 1, i64* %_id_of_gep1292
  %_id_of_gep1294 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1291, i32 0, i32 1, i32 1
  store i64 2, i64* %_id_of_gep1294
  %_raw_array1296 = call i64* @oat_alloc_array(i64 2)
  %_array1297 = bitcast i64* %_raw_array1296 to { i64, [0 x i64] }*
  %_id_of_gep1298 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1297, i32 0, i32 1, i32 0
  store i64 3, i64* %_id_of_gep1298
  %_id_of_gep1300 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1297, i32 0, i32 1, i32 1
  store i64 4, i64* %_id_of_gep1300
  %_id_of_gep1302 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1289, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1291, { i64, [0 x i64] }** %_id_of_gep1302
  %_id_of_gep1304 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1289, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1297, { i64, [0 x i64] }** %_id_of_gep1304
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1289, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1287
  %_exp_of_id1311 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1287
  %_id_of_index1309 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1311, i32 0, i32 1, i32 0
  %_id_of_load1310 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index1309
  %_id_of_index1307 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load1310, i32 0, i32 1, i32 0
  %_id_of_load1308 = load i64, i64* %_id_of_index1307
  ret i64 %_id_of_load1308
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

; generated from: hw4programs/run5.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null
@_const_of_global1281 = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_allocated_arg1253 = alloca i64
  store i64 %argc, i64* %_allocated_arg1253
  %_allocated_arg1255 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg1255
  %_raw_array1257 = call i64* @oat_alloc_array(i64 2)
  %_array1258 = bitcast i64* %_raw_array1257 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1259 = call i64* @oat_alloc_array(i64 2)
  %_array1260 = bitcast i64* %_raw_array1259 to { i64, [0 x i64] }*
  %_id_of_gep1261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1260, i32 0, i32 1, i32 0
  store i64 1, i64* %_id_of_gep1261
  %_id_of_gep1263 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1260, i32 0, i32 1, i32 1
  store i64 2, i64* %_id_of_gep1263
  %_raw_array1265 = call i64* @oat_alloc_array(i64 2)
  %_array1266 = bitcast i64* %_raw_array1265 to { i64, [0 x i64] }*
  %_id_of_gep1267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1266, i32 0, i32 1, i32 0
  store i64 3, i64* %_id_of_gep1267
  %_id_of_gep1269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1266, i32 0, i32 1, i32 1
  store i64 4, i64* %_id_of_gep1269
  %_id_of_gep1271 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1258, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1260, { i64, [0 x i64] }** %_id_of_gep1271
  %_id_of_gep1273 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1258, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1266, { i64, [0 x i64] }** %_id_of_gep1273
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1258, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_exp_of_id1280 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_id_of_index1278 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1280, i32 0, i32 1, i32 1
  %_id_of_load1279 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index1278
  %_id_of_index1276 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load1279, i32 0, i32 1, i32 1
  %_id_of_load1277 = load i64, i64* %_id_of_index1276
  ret i64 %_id_of_load1277
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

; generated from: hw4programs/run3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null
@_const_of_global1235 = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_allocated_arg1221 = alloca i64
  store i64 %argc, i64* %_allocated_arg1221
  %_allocated_arg1223 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg1223
  %_raw_array1225 = call i64* @oat_alloc_array(i64 2)
  %_array1226 = bitcast i64* %_raw_array1225 to { i64, [0 x i64] }*
  %_id_of_gep1227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1226, i32 0, i32 1, i32 0
  store i64 1, i64* %_id_of_gep1227
  %_id_of_gep1229 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1226, i32 0, i32 1, i32 1
  store i64 2, i64* %_id_of_gep1229
  store { i64, [0 x i64] }* %_array1226, { i64, [0 x i64] }** @arr
  %_exp_of_id1234 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_id_of_index1232 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id1234, i32 0, i32 1, i32 1
  %_id_of_load1233 = load i64, i64* %_id_of_index1232
  ret i64 %_id_of_load1233
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

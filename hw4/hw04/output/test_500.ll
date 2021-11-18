; generated from: hw4programs/run20.oat
target triple = "x86_64-unknown-linux"
define i64 @f() {
  ret i64 19
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl2038 = alloca { i64, [0 x i64] }*
  %_allocated_arg2034 = alloca i64
  store i64 %argc, i64* %_allocated_arg2034
  %_allocated_arg2036 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg2036
  %_raw_array2039 = call i64* @oat_alloc_array(i64 3)
  %_array2040 = bitcast i64* %_raw_array2039 to { i64, [0 x i64] }*
  %_id_of_gep2041 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2040, i32 0, i32 1, i32 0
  store i64 1, i64* %_id_of_gep2041
  %_id_of_gep2043 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2040, i32 0, i32 1, i32 1
  store i64 100, i64* %_id_of_gep2043
  %_id_of_gep2045 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2040, i32 0, i32 1, i32 2
  store i64 19, i64* %_id_of_gep2045
  store { i64, [0 x i64] }* %_array2040, { i64, [0 x i64] }** %_id_of_decl2038
  %_exp_of_id2050 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl2038
  %_id_of_index2048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id2050, i32 0, i32 1, i32 2
  %_id_of_load2049 = load i64, i64* %_id_of_index2048
  ret i64 %_id_of_load2049
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

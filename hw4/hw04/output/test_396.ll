; generated from: hw4programs/run23.oat
target triple = "x86_64-unknown-linux"
@_exp_of_string2080 = global [4 x i8] c"abc\00"
@_exp_of_string2082 = global [4 x i8] c"def\00"
@_exp_of_string2090 = global [4 x i8] c"789\00"
@_exp_of_string2092 = global [4 x i8] c"123\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl2075 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  %_allocated_arg2071 = alloca i64
  store i64 %argc, i64* %_allocated_arg2071
  %_allocated_arg2073 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg2073
  %_raw_array2076 = call i64* @oat_alloc_array(i64 2)
  %_array2077 = bitcast i64* %_raw_array2076 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array2078 = call i64* @oat_alloc_array(i64 2)
  %_array2079 = bitcast i64* %_raw_array2078 to { i64, [0 x i8*] }*
  %_exp_of_bit2081 = bitcast [4 x i8]* @_exp_of_string2080 to i8*
  %_exp_of_bit2083 = bitcast [4 x i8]* @_exp_of_string2082 to i8*
  %_id_of_gep2084 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2079, i32 0, i32 1, i32 0
  store i8* %_exp_of_bit2081, i8** %_id_of_gep2084
  %_id_of_gep2086 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2079, i32 0, i32 1, i32 1
  store i8* %_exp_of_bit2083, i8** %_id_of_gep2086
  %_raw_array2088 = call i64* @oat_alloc_array(i64 2)
  %_array2089 = bitcast i64* %_raw_array2088 to { i64, [0 x i8*] }*
  %_exp_of_bit2091 = bitcast [4 x i8]* @_exp_of_string2090 to i8*
  %_exp_of_bit2093 = bitcast [4 x i8]* @_exp_of_string2092 to i8*
  %_id_of_gep2094 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2089, i32 0, i32 1, i32 0
  store i8* %_exp_of_bit2091, i8** %_id_of_gep2094
  %_id_of_gep2096 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2089, i32 0, i32 1, i32 1
  store i8* %_exp_of_bit2093, i8** %_id_of_gep2096
  %_id_of_gep2098 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array2077, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array2079, { i64, [0 x i8*] }** %_id_of_gep2098
  %_id_of_gep2100 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array2077, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array2089, { i64, [0 x i8*] }** %_id_of_gep2100
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array2077, { i64, [0 x { i64, [0 x i8*] }*] }** %_id_of_decl2075
  %_exp_of_id2108 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_id_of_decl2075
  %_id_of_index2106 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_exp_of_id2108, i32 0, i32 1, i32 1
  %_id_of_load2107 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_id_of_index2106
  %_id_of_index2104 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_id_of_load2107, i32 0, i32 1, i32 1
  %_id_of_load2105 = load i8*, i8** %_id_of_index2104
  call void @print_string(i8* %_id_of_load2105)
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

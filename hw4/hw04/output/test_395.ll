; generated from: hw4programs/run22.oat
target triple = "x86_64-unknown-linux"
@_exp_of_string2058 = global [4 x i8] c"abc\00"
@_exp_of_string2060 = global [4 x i8] c"def\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl2055 = alloca { i64, [0 x i8*] }*
  %_allocated_arg2051 = alloca i64
  store i64 %argc, i64* %_allocated_arg2051
  %_allocated_arg2053 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg2053
  %_raw_array2056 = call i64* @oat_alloc_array(i64 2)
  %_array2057 = bitcast i64* %_raw_array2056 to { i64, [0 x i8*] }*
  %_exp_of_bit2059 = bitcast [4 x i8]* @_exp_of_string2058 to i8*
  %_exp_of_bit2061 = bitcast [4 x i8]* @_exp_of_string2060 to i8*
  %_id_of_gep2062 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2057, i32 0, i32 1, i32 0
  store i8* %_exp_of_bit2059, i8** %_id_of_gep2062
  %_id_of_gep2064 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2057, i32 0, i32 1, i32 1
  store i8* %_exp_of_bit2061, i8** %_id_of_gep2064
  store { i64, [0 x i8*] }* %_array2057, { i64, [0 x i8*] }** %_id_of_decl2055
  %_exp_of_id2070 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_id_of_decl2055
  %_id_of_index2068 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_exp_of_id2070, i32 0, i32 1, i32 0
  %_id_of_load2069 = load i8*, i8** %_id_of_index2068
  call void @print_string(i8* %_id_of_load2069)
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

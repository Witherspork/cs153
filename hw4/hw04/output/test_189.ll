; generated from: hw4programs/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl3093 = alloca { i64, [0 x i64] }*
  %_allocated_arg3089 = alloca i64
  store i64 %argc, i64* %_allocated_arg3089
  %_allocated_arg3091 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg3091
  %_raw_array3094 = call i64* @oat_alloc_array(i64 10)
  %_array3095 = bitcast i64* %_raw_array3094 to { i64, [0 x i64] }*
  %_id_of_gep3096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3095, i32 0, i32 1, i32 0
  store i64 126, i64* %_id_of_gep3096
  %_id_of_gep3098 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3095, i32 0, i32 1, i32 1
  store i64 125, i64* %_id_of_gep3098
  %_id_of_gep3100 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3095, i32 0, i32 1, i32 2
  store i64 124, i64* %_id_of_gep3100
  %_id_of_gep3102 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3095, i32 0, i32 1, i32 3
  store i64 123, i64* %_id_of_gep3102
  %_id_of_gep3104 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3095, i32 0, i32 1, i32 4
  store i64 122, i64* %_id_of_gep3104
  %_id_of_gep3106 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3095, i32 0, i32 1, i32 5
  store i64 121, i64* %_id_of_gep3106
  %_id_of_gep3108 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3095, i32 0, i32 1, i32 6
  store i64 120, i64* %_id_of_gep3108
  %_id_of_gep3110 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3095, i32 0, i32 1, i32 7
  store i64 119, i64* %_id_of_gep3110
  %_id_of_gep3112 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3095, i32 0, i32 1, i32 8
  store i64 118, i64* %_id_of_gep3112
  %_id_of_gep3114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3095, i32 0, i32 1, i32 9
  store i64 117, i64* %_id_of_gep3114
  store { i64, [0 x i64] }* %_array3095, { i64, [0 x i64] }** %_id_of_decl3093
  %_exp_of_id3119 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3093
  %_exp_of_call3118 = call i8* @string_of_array({ i64, [0 x i64] }* %_exp_of_id3119)
  call void @print_string(i8* %_exp_of_call3118)
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

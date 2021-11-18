; generated from: hw4programs/lib7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl2972 = alloca { i64, [0 x i64] }*
  %_id_of_decl2986 = alloca i8*
  %_id_of_decl2990 = alloca { i64, [0 x i64] }*
  %_id_of_decl2994 = alloca i64
  %_i2996 = alloca i64
  %_allocated_arg2968 = alloca i64
  store i64 %argc, i64* %_allocated_arg2968
  %_allocated_arg2970 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg2970
  %_raw_array2973 = call i64* @oat_alloc_array(i64 5)
  %_array2974 = bitcast i64* %_raw_array2973 to { i64, [0 x i64] }*
  %_id_of_gep2975 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2974, i32 0, i32 1, i32 0
  store i64 111, i64* %_id_of_gep2975
  %_id_of_gep2977 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2974, i32 0, i32 1, i32 1
  store i64 112, i64* %_id_of_gep2977
  %_id_of_gep2979 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2974, i32 0, i32 1, i32 2
  store i64 113, i64* %_id_of_gep2979
  %_id_of_gep2981 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2974, i32 0, i32 1, i32 3
  store i64 114, i64* %_id_of_gep2981
  %_id_of_gep2983 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2974, i32 0, i32 1, i32 4
  store i64 115, i64* %_id_of_gep2983
  store { i64, [0 x i64] }* %_array2974, { i64, [0 x i64] }** %_id_of_decl2972
  %_exp_of_id2988 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl2972
  %_exp_of_call2987 = call i8* @string_of_array({ i64, [0 x i64] }* %_exp_of_id2988)
  store i8* %_exp_of_call2987, i8** %_id_of_decl2986
  %_exp_of_id2992 = load i8*, i8** %_id_of_decl2986
  %_exp_of_call2991 = call { i64, [0 x i64] }* @array_of_string(i8* %_exp_of_id2992)
  store { i64, [0 x i64] }* %_exp_of_call2991, { i64, [0 x i64] }** %_id_of_decl2990
  store i64 0, i64* %_id_of_decl2994
  store i64 0, i64* %_i2996
  br label %_entry3010
_entry3010:
  %_exp_of_id2998 = load i64, i64* %_i2996
  %_exp_of_bop2999 = icmp slt i64 %_exp_of_id2998, 5
  br i1 %_exp_of_bop2999, label %_body3011, label %_exit3012
_body3011:
  %_exp_of_id3000 = load i64, i64* %_id_of_decl2994
  %_exp_of_id3003 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl2990
  %_exp_of_id3004 = load i64, i64* %_i2996
  %_id_of_index3001 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3003, i32 0, i32 1, i64 %_exp_of_id3004
  %_id_of_load3002 = load i64, i64* %_id_of_index3001
  %_exp_of_bop3005 = add i64 %_exp_of_id3000, %_id_of_load3002
  store i64 %_exp_of_bop3005, i64* %_id_of_decl2994
  %_exp_of_id3007 = load i64, i64* %_i2996
  %_exp_of_bop3008 = add i64 %_exp_of_id3007, 1
  store i64 %_exp_of_bop3008, i64* %_i2996
  br label %_entry3010
_exit3012:
  %_exp_of_id3013 = load i64, i64* %_id_of_decl2994
  ret i64 %_exp_of_id3013
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

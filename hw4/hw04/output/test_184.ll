; generated from: hw4programs/lib6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl2924 = alloca { i64, [0 x i64] }*
  %_id_of_decl2938 = alloca i8*
  %_id_of_decl2942 = alloca { i64, [0 x i64] }*
  %_id_of_decl2946 = alloca i64
  %_i2948 = alloca i64
  %_allocated_arg2920 = alloca i64
  store i64 %argc, i64* %_allocated_arg2920
  %_allocated_arg2922 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg2922
  %_raw_array2925 = call i64* @oat_alloc_array(i64 5)
  %_array2926 = bitcast i64* %_raw_array2925 to { i64, [0 x i64] }*
  %_id_of_gep2927 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2926, i32 0, i32 1, i32 0
  store i64 111, i64* %_id_of_gep2927
  %_id_of_gep2929 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2926, i32 0, i32 1, i32 1
  store i64 112, i64* %_id_of_gep2929
  %_id_of_gep2931 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2926, i32 0, i32 1, i32 2
  store i64 113, i64* %_id_of_gep2931
  %_id_of_gep2933 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2926, i32 0, i32 1, i32 3
  store i64 114, i64* %_id_of_gep2933
  %_id_of_gep2935 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2926, i32 0, i32 1, i32 4
  store i64 115, i64* %_id_of_gep2935
  store { i64, [0 x i64] }* %_array2926, { i64, [0 x i64] }** %_id_of_decl2924
  %_exp_of_id2940 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl2924
  %_exp_of_call2939 = call i8* @string_of_array({ i64, [0 x i64] }* %_exp_of_id2940)
  store i8* %_exp_of_call2939, i8** %_id_of_decl2938
  %_exp_of_id2944 = load i8*, i8** %_id_of_decl2938
  %_exp_of_call2943 = call { i64, [0 x i64] }* @array_of_string(i8* %_exp_of_id2944)
  store { i64, [0 x i64] }* %_exp_of_call2943, { i64, [0 x i64] }** %_id_of_decl2942
  store i64 0, i64* %_id_of_decl2946
  store i64 0, i64* %_i2948
  br label %_entry2962
_entry2962:
  %_exp_of_id2950 = load i64, i64* %_i2948
  %_exp_of_bop2951 = icmp slt i64 %_exp_of_id2950, 5
  br i1 %_exp_of_bop2951, label %_body2963, label %_exit2964
_body2963:
  %_exp_of_id2952 = load i64, i64* %_id_of_decl2946
  %_exp_of_id2955 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl2942
  %_exp_of_id2956 = load i64, i64* %_i2948
  %_id_of_index2953 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id2955, i32 0, i32 1, i64 %_exp_of_id2956
  %_id_of_load2954 = load i64, i64* %_id_of_index2953
  %_exp_of_bop2957 = add i64 %_exp_of_id2952, %_id_of_load2954
  store i64 %_exp_of_bop2957, i64* %_id_of_decl2946
  %_exp_of_id2959 = load i64, i64* %_i2948
  %_exp_of_bop2960 = add i64 %_exp_of_id2959, 1
  store i64 %_exp_of_bop2960, i64* %_i2948
  br label %_entry2962
_exit2964:
  %_exp_of_id2966 = load i64, i64* %_id_of_decl2946
  call void @print_int(i64 %_exp_of_id2966)
  %_exp_of_id2967 = load i64, i64* %_id_of_decl2946
  ret i64 %_exp_of_id2967
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

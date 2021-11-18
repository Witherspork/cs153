; generated from: hw4programs/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i3028 = alloca i64
  %_allocated_arg3024 = alloca i64
  store i64 %argc, i64* %_allocated_arg3024
  %_allocated_arg3026 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg3026
  store i64 1, i64* %_i3028
  br label %_entry3041
_entry3041:
  %_exp_of_id3030 = load i64, i64* %_i3028
  %_exp_of_id3031 = load i64, i64* %_allocated_arg3024
  %_exp_of_bop3032 = icmp slt i64 %_exp_of_id3030, %_exp_of_id3031
  br i1 %_exp_of_bop3032, label %_body3042, label %_exit3043
_body3042:
  %_exp_of_id3036 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_allocated_arg3026
  %_exp_of_id3037 = load i64, i64* %_i3028
  %_id_of_index3034 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_exp_of_id3036, i32 0, i32 1, i64 %_exp_of_id3037
  %_id_of_load3035 = load i8*, i8** %_id_of_index3034
  call void @print_string(i8* %_id_of_load3035)
  %_exp_of_id3038 = load i64, i64* %_i3028
  %_exp_of_bop3039 = add i64 %_exp_of_id3038, 1
  store i64 %_exp_of_bop3039, i64* %_i3028
  br label %_entry3041
_exit3043:
  %_exp_of_id3044 = load i64, i64* %_allocated_arg3024
  ret i64 %_exp_of_id3044
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

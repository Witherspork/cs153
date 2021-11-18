; generated from: hw4programs/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([6 x i8]* @_const_of_global2887 to i8*)
@_const_of_global2887 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl2861 = alloca { i64, [0 x i64] }*
  %_id_of_decl2865 = alloca i64
  %_i2867 = alloca i64
  %_allocated_arg2857 = alloca i64
  store i64 %argc, i64* %_allocated_arg2857
  %_allocated_arg2859 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg2859
  %_exp_of_id2863 = load i8*, i8** @str
  %_exp_of_call2862 = call { i64, [0 x i64] }* @array_of_string(i8* %_exp_of_id2863)
  store { i64, [0 x i64] }* %_exp_of_call2862, { i64, [0 x i64] }** %_id_of_decl2861
  store i64 0, i64* %_id_of_decl2865
  store i64 0, i64* %_i2867
  br label %_entry2881
_entry2881:
  %_exp_of_id2869 = load i64, i64* %_i2867
  %_exp_of_bop2870 = icmp slt i64 %_exp_of_id2869, 5
  br i1 %_exp_of_bop2870, label %_body2882, label %_exit2883
_body2882:
  %_exp_of_id2871 = load i64, i64* %_id_of_decl2865
  %_exp_of_id2874 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl2861
  %_exp_of_id2875 = load i64, i64* %_i2867
  %_id_of_index2872 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id2874, i32 0, i32 1, i64 %_exp_of_id2875
  %_id_of_load2873 = load i64, i64* %_id_of_index2872
  %_exp_of_bop2876 = add i64 %_exp_of_id2871, %_id_of_load2873
  store i64 %_exp_of_bop2876, i64* %_id_of_decl2865
  %_exp_of_id2878 = load i64, i64* %_i2867
  %_exp_of_bop2879 = add i64 %_exp_of_id2878, 1
  store i64 %_exp_of_bop2879, i64* %_i2867
  br label %_entry2881
_exit2883:
  %_exp_of_id2885 = load i64, i64* %_id_of_decl2865
  call void @print_int(i64 %_exp_of_id2885)
  %_exp_of_id2886 = load i64, i64* %_id_of_decl2865
  ret i64 %_exp_of_id2886
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

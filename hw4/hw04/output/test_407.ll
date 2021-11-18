; generated from: hw4programs/lib5.oat
target triple = "x86_64-unknown-linux"
@_exp_of_string2893 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl2892 = alloca i8*
  %_id_of_decl2896 = alloca { i64, [0 x i64] }*
  %_id_of_decl2900 = alloca i64
  %_i2902 = alloca i64
  %_allocated_arg2888 = alloca i64
  store i64 %argc, i64* %_allocated_arg2888
  %_allocated_arg2890 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg2890
  %_exp_of_bit2894 = bitcast [6 x i8]* @_exp_of_string2893 to i8*
  store i8* %_exp_of_bit2894, i8** %_id_of_decl2892
  %_exp_of_id2898 = load i8*, i8** %_id_of_decl2892
  %_exp_of_call2897 = call { i64, [0 x i64] }* @array_of_string(i8* %_exp_of_id2898)
  store { i64, [0 x i64] }* %_exp_of_call2897, { i64, [0 x i64] }** %_id_of_decl2896
  store i64 0, i64* %_id_of_decl2900
  store i64 0, i64* %_i2902
  br label %_entry2916
_entry2916:
  %_exp_of_id2904 = load i64, i64* %_i2902
  %_exp_of_bop2905 = icmp slt i64 %_exp_of_id2904, 5
  br i1 %_exp_of_bop2905, label %_body2917, label %_exit2918
_body2917:
  %_exp_of_id2906 = load i64, i64* %_id_of_decl2900
  %_exp_of_id2909 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl2896
  %_exp_of_id2910 = load i64, i64* %_i2902
  %_id_of_index2907 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id2909, i32 0, i32 1, i64 %_exp_of_id2910
  %_id_of_load2908 = load i64, i64* %_id_of_index2907
  %_exp_of_bop2911 = add i64 %_exp_of_id2906, %_id_of_load2908
  store i64 %_exp_of_bop2911, i64* %_id_of_decl2900
  %_exp_of_id2913 = load i64, i64* %_i2902
  %_exp_of_bop2914 = add i64 %_exp_of_id2913, 1
  store i64 %_exp_of_bop2914, i64* %_i2902
  br label %_entry2916
_exit2918:
  %_exp_of_id2919 = load i64, i64* %_id_of_decl2900
  ret i64 %_exp_of_id2919
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

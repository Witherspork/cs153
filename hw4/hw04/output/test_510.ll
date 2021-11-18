; generated from: hw4programs/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1
@_const_of_global2838 = global i64 1

define i64 @f() {
  %_exp_of_id2834 = load i64, i64* @a
  %_exp_of_bop2835 = add i64 %_exp_of_id2834, 1
  store i64 %_exp_of_bop2835, i64* @a
  %_exp_of_id2837 = load i64, i64* @a
  ret i64 %_exp_of_id2837
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl2812 = alloca { i64, [0 x i64] }*
  %_allocated_arg2808 = alloca i64
  store i64 %argc, i64* %_allocated_arg2808
  %_allocated_arg2810 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg2810
  %_exp_of_call2813 = call i64 @f()
  %_raw_array2814 = call i64* @oat_alloc_array(i64 %_exp_of_call2813)
  %_array2815 = bitcast i64* %_raw_array2814 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2815, { i64, [0 x i64] }** %_id_of_decl2812
  %_exp_of_call2817 = call i64 @f()
  %_exp_of_id2819 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl2812
  %_id_of_gep_exp2820 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id2819, i32 0, i32 1, i32 0
  store i64 %_exp_of_call2817, i64* %_id_of_gep_exp2820
  %_exp_of_call2821 = call i64 @f()
  %_exp_of_id2823 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl2812
  %_id_of_gep_exp2824 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id2823, i32 0, i32 1, i32 1
  store i64 %_exp_of_call2821, i64* %_id_of_gep_exp2824
  %_exp_of_id2825 = load i64, i64* @a
  %_exp_of_id2828 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl2812
  %_id_of_index2826 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id2828, i32 0, i32 1, i32 0
  %_id_of_load2827 = load i64, i64* %_id_of_index2826
  %_exp_of_bop2829 = add i64 %_exp_of_id2825, %_id_of_load2827
  %_exp_of_id2832 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl2812
  %_id_of_index2830 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id2832, i32 0, i32 1, i32 1
  %_id_of_load2831 = load i64, i64* %_id_of_index2830
  %_exp_of_bop2833 = add i64 %_exp_of_bop2829, %_id_of_load2831
  ret i64 %_exp_of_bop2833
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

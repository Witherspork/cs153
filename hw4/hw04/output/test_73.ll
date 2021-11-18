; generated from: hw4programs/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1
@_const_of_global2806 = global i64 1

define i64 @f() {
  %_exp_of_id2802 = load i64, i64* @a
  %_exp_of_bop2803 = add i64 %_exp_of_id2802, 1
  store i64 %_exp_of_bop2803, i64* @a
  %_exp_of_id2805 = load i64, i64* @a
  ret i64 %_exp_of_id2805
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl2782 = alloca { i64, [0 x i64] }*
  %_allocated_arg2778 = alloca i64
  store i64 %argc, i64* %_allocated_arg2778
  %_allocated_arg2780 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg2780
  %_exp_of_call2783 = call i64 @f()
  %_raw_array2784 = call i64* @oat_alloc_array(i64 %_exp_of_call2783)
  %_array2785 = bitcast i64* %_raw_array2784 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2785, { i64, [0 x i64] }** %_id_of_decl2782
  %_exp_of_id2788 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl2782
  %_id_of_gep_exp2789 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id2788, i32 0, i32 1, i32 0
  store i64 0, i64* %_id_of_gep_exp2789
  %_exp_of_id2791 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl2782
  %_id_of_gep_exp2792 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id2791, i32 0, i32 1, i32 1
  store i64 1, i64* %_id_of_gep_exp2792
  %_exp_of_id2793 = load i64, i64* @a
  %_exp_of_id2796 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl2782
  %_id_of_index2794 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id2796, i32 0, i32 1, i32 0
  %_id_of_load2795 = load i64, i64* %_id_of_index2794
  %_exp_of_bop2797 = add i64 %_exp_of_id2793, %_id_of_load2795
  %_exp_of_id2800 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl2782
  %_id_of_index2798 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id2800, i32 0, i32 1, i32 1
  %_id_of_load2799 = load i64, i64* %_id_of_index2798
  %_exp_of_bop2801 = add i64 %_exp_of_bop2797, %_id_of_load2799
  ret i64 %_exp_of_bop2801
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

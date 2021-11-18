; generated from: hw4programs/lib11.oat
target triple = "x86_64-unknown-linux"
@_exp_of_string3051 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl3049 = alloca { i64, [0 x i64] }*
  %_id_of_decl3054 = alloca i64
  %_i3056 = alloca i64
  %_i3071 = alloca i64
  %_allocated_arg3045 = alloca i64
  store i64 %argc, i64* %_allocated_arg3045
  %_allocated_arg3047 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg3047
  %_exp_of_bit3052 = bitcast [11 x i8]* @_exp_of_string3051 to i8*
  %_exp_of_call3050 = call { i64, [0 x i64] }* @array_of_string(i8* %_exp_of_bit3052)
  store { i64, [0 x i64] }* %_exp_of_call3050, { i64, [0 x i64] }** %_id_of_decl3049
  store i64 0, i64* %_id_of_decl3054
  store i64 0, i64* %_i3056
  br label %_entry3068
_entry3068:
  %_exp_of_id3058 = load i64, i64* %_i3056
  %_exp_of_bop3059 = icmp slt i64 %_exp_of_id3058, 10
  br i1 %_exp_of_bop3059, label %_body3069, label %_exit3070
_body3069:
  %_exp_of_id3060 = load i64, i64* %_i3056
  %_exp_of_id3062 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3049
  %_exp_of_id3063 = load i64, i64* %_i3056
  %_id_of_gep_exp3064 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3062, i32 0, i32 1, i64 %_exp_of_id3063
  store i64 %_exp_of_id3060, i64* %_id_of_gep_exp3064
  %_exp_of_id3065 = load i64, i64* %_i3056
  %_exp_of_bop3066 = add i64 %_exp_of_id3065, 1
  store i64 %_exp_of_bop3066, i64* %_i3056
  br label %_entry3068
_exit3070:
  store i64 0, i64* %_i3071
  br label %_entry3085
_entry3085:
  %_exp_of_id3073 = load i64, i64* %_i3071
  %_exp_of_bop3074 = icmp slt i64 %_exp_of_id3073, 10
  br i1 %_exp_of_bop3074, label %_body3086, label %_exit3087
_body3086:
  %_exp_of_id3075 = load i64, i64* %_id_of_decl3054
  %_exp_of_id3078 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3049
  %_exp_of_id3079 = load i64, i64* %_i3071
  %_id_of_index3076 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3078, i32 0, i32 1, i64 %_exp_of_id3079
  %_id_of_load3077 = load i64, i64* %_id_of_index3076
  %_exp_of_bop3080 = add i64 %_exp_of_id3075, %_id_of_load3077
  store i64 %_exp_of_bop3080, i64* %_id_of_decl3054
  %_exp_of_id3082 = load i64, i64* %_i3071
  %_exp_of_bop3083 = add i64 %_exp_of_id3082, 1
  store i64 %_exp_of_bop3083, i64* %_i3071
  br label %_entry3085
_exit3087:
  %_exp_of_id3088 = load i64, i64* %_id_of_decl3054
  ret i64 %_exp_of_id3088
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

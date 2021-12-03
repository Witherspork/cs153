; generated from: hw4programs/regalloctest.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc4, { i64, [0 x i8*] }* %_argv1) {
  %_argc5 = alloca i64
  %_argv2 = alloca { i64, [0 x i8*] }*
  %_x7 = alloca i64
  %_i9 = alloca i64
  %_a16 = alloca i64
  %_b21 = alloca i64
  %_c26 = alloca i64
  %_d31 = alloca i64
  %_e36 = alloca i64
  %_f41 = alloca i64
  %_g46 = alloca i64
  %_h51 = alloca i64
  %_j56 = alloca i64
  %_k61 = alloca i64
  %_l66 = alloca i64
  %_m71 = alloca i64
  %_n76 = alloca i64
  %_o81 = alloca i64
  %_p86 = alloca i64
  %_q91 = alloca i64
  %_r96 = alloca i64
  store i64 %_argc4, i64* %_argc5
  store { i64, [0 x i8*] }* %_argv1, { i64, [0 x i8*] }** %_argv2
  store i64 0, i64* %_x7
  store i64 0, i64* %_i9
  br label %_cond15
_cond15:
  %_i11 = load i64, i64* %_i9
  %_bop12 = icmp slt i64 %_i11, 10000000
  br i1 %_bop12, label %_body14, label %_post13
_body14:
  store i64 0, i64* %_a16
  %_a18 = load i64, i64* %_a16
  %_i19 = load i64, i64* %_i9
  %_bop20 = add i64 %_a18, %_i19
  store i64 %_bop20, i64* %_b21
  %_b23 = load i64, i64* %_b21
  %_i24 = load i64, i64* %_i9
  %_bop25 = add i64 %_b23, %_i24
  store i64 %_bop25, i64* %_c26
  %_c28 = load i64, i64* %_c26
  %_i29 = load i64, i64* %_i9
  %_bop30 = add i64 %_c28, %_i29
  store i64 %_bop30, i64* %_d31
  %_d33 = load i64, i64* %_d31
  %_i34 = load i64, i64* %_i9
  %_bop35 = add i64 %_d33, %_i34
  store i64 %_bop35, i64* %_e36
  %_e38 = load i64, i64* %_e36
  %_i39 = load i64, i64* %_i9
  %_bop40 = add i64 %_e38, %_i39
  store i64 %_bop40, i64* %_f41
  %_f43 = load i64, i64* %_f41
  %_i44 = load i64, i64* %_i9
  %_bop45 = add i64 %_f43, %_i44
  store i64 %_bop45, i64* %_g46
  %_g48 = load i64, i64* %_g46
  %_i49 = load i64, i64* %_i9
  %_bop50 = add i64 %_g48, %_i49
  store i64 %_bop50, i64* %_h51
  %_h53 = load i64, i64* %_h51
  %_i54 = load i64, i64* %_i9
  %_bop55 = add i64 %_h53, %_i54
  store i64 %_bop55, i64* %_j56
  %_j58 = load i64, i64* %_j56
  %_i59 = load i64, i64* %_i9
  %_bop60 = add i64 %_j58, %_i59
  store i64 %_bop60, i64* %_k61
  %_k63 = load i64, i64* %_k61
  %_i64 = load i64, i64* %_i9
  %_bop65 = add i64 %_k63, %_i64
  store i64 %_bop65, i64* %_l66
  %_l68 = load i64, i64* %_l66
  %_i69 = load i64, i64* %_i9
  %_bop70 = add i64 %_l68, %_i69
  store i64 %_bop70, i64* %_m71
  %_m73 = load i64, i64* %_m71
  %_i74 = load i64, i64* %_i9
  %_bop75 = add i64 %_m73, %_i74
  store i64 %_bop75, i64* %_n76
  %_n78 = load i64, i64* %_n76
  %_i79 = load i64, i64* %_i9
  %_bop80 = add i64 %_n78, %_i79
  store i64 %_bop80, i64* %_o81
  %_o83 = load i64, i64* %_o81
  %_i84 = load i64, i64* %_i9
  %_bop85 = add i64 %_o83, %_i84
  store i64 %_bop85, i64* %_p86
  %_p88 = load i64, i64* %_p86
  %_i89 = load i64, i64* %_i9
  %_bop90 = add i64 %_p88, %_i89
  store i64 %_bop90, i64* %_q91
  %_q93 = load i64, i64* %_q91
  %_i94 = load i64, i64* %_i9
  %_bop95 = add i64 %_q93, %_i94
  store i64 %_bop95, i64* %_r96
  %_x98 = load i64, i64* %_x7
  %_r99 = load i64, i64* %_r96
  %_bop100 = add i64 %_x98, %_r99
  store i64 %_bop100, i64* %_x7
  %_i102 = load i64, i64* %_i9
  %_bop103 = add i64 %_i102, 1
  store i64 %_bop103, i64* %_i9
  br label %_cond15
_post13:
  %_x105 = load i64, i64* %_x7
  ret i64 %_x105
}


declare i64* @oat_malloc(i64)
declare i64* @oat_alloc_array(i64)
declare void @oat_assert_not_null(i8*)
declare void @oat_assert_array_length(i64*, i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)

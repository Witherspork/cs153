; generated from: hw4programs/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl57 = alloca i64
  %_id_of_decl60 = alloca i64
  %_allocated_arg53 = alloca i64
  store i64 %argc, i64* %_allocated_arg53
  %_allocated_arg55 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg55
  %_exp_of_bop58 = lshr i64 100, 3
  store i64 %_exp_of_bop58, i64* %_id_of_decl57
  %_exp_of_bop61 = shl i64 100, 3
  store i64 %_exp_of_bop61, i64* %_id_of_decl60
  %_exp_of_id63 = load i64, i64* %_id_of_decl57
  %_exp_of_id64 = load i64, i64* %_id_of_decl60
  %_exp_of_bop65 = sub i64 %_exp_of_id63, %_exp_of_id64
  %_exp_of_bop66 = icmp sle i64 %_exp_of_bop65, 0
  br i1 %_exp_of_bop66, label %_branch_of_eq75, label %_branch_of_neq76
_branch_of_eq75:
  %_exp_of_id67 = load i64, i64* %_id_of_decl57
  %_id_of_uop68 = sub i64 0, %_exp_of_id67
  %_exp_of_id69 = load i64, i64* %_id_of_decl60
  %_exp_of_bop70 = sub i64 %_id_of_uop68, %_exp_of_id69
  ret i64 %_exp_of_bop70
_branch_of_neq76:
  %_exp_of_id71 = load i64, i64* %_id_of_decl57
  %_exp_of_id72 = load i64, i64* %_id_of_decl60
  %_exp_of_bop73 = sub i64 %_exp_of_id71, %_exp_of_id72
  ret i64 %_exp_of_bop73
_merge74:
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

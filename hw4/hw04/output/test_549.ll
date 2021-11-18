; generated from: hw4programs/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_allocated_arg103 = alloca i64
  store i64 %argc, i64* %_allocated_arg103
  %_allocated_arg105 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg105
  %_exp_of_bop107 = icmp ne i64 6, 5
  br i1 %_exp_of_bop107, label %_branch_of_eq116, label %_branch_of_neq117
_branch_of_eq116:
  %_exp_of_bop108 = lshr i64 5, 6
  %_exp_of_bop109 = shl i64 %_exp_of_bop108, 9
  %_exp_of_bop110 = ashr i64 %_exp_of_bop109, 10
  %_id_of_uop111 = xor i64 %_exp_of_bop110, -1
  %_exp_of_bop112 = mul i64 %_id_of_uop111, 2
  %_exp_of_bop113 = sub i64 %_exp_of_bop112, 100
  %_exp_of_bop114 = add i64 %_exp_of_bop113, 6
  ret i64 %_exp_of_bop114
_branch_of_neq117:
  ret i64 2
_merge115:
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

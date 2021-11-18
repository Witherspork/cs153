; generated from: hw4programs/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_allocated_arg92 = alloca i64
  store i64 %argc, i64* %_allocated_arg92
  %_allocated_arg94 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg94
  %_id_of_uop96 = xor i64 5, -1
  %_exp_of_bop97 = and i64 %_id_of_uop96, 6
  %_exp_of_bop98 = or i64 2, 0
  %_exp_of_bop99 = icmp sge i64 %_exp_of_bop97, %_exp_of_bop98
  br i1 %_exp_of_bop99, label %_branch_of_eq101, label %_branch_of_neq102
_branch_of_eq101:
  ret i64 23
_branch_of_neq102:
  ret i64 46
_merge100:
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

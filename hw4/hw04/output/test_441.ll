; generated from: hw4programs/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_allocated_arg77 = alloca i64
  store i64 %argc, i64* %_allocated_arg77
  %_allocated_arg79 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg79
  %_id_of_uop81 = icmp eq i1 1, 0
  %_id_of_uop82 = sub i64 0, 4
  %_exp_of_bop83 = add i64 %_id_of_uop82, 5
  %_exp_of_bop84 = icmp sgt i64 %_exp_of_bop83, 0
  %_exp_of_bop85 = mul i64 6, 4
  %_exp_of_bop86 = icmp slt i64 %_exp_of_bop85, 25
  %_exp_of_bop87 = and i1 %_exp_of_bop84, %_exp_of_bop86
  %_exp_of_bop88 = or i1 %_id_of_uop81, %_exp_of_bop87
  br i1 %_exp_of_bop88, label %_branch_of_eq90, label %_branch_of_neq91
_branch_of_eq90:
  ret i64 9
_branch_of_neq91:
  ret i64 4
_merge89:
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

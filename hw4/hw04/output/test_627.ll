; generated from: hw4programs/stairClimb.oat
target triple = "x86_64-unknown-linux"
define i64 @stairClimb(i64 %n) {
  %_id_of_decl8 = alloca i64
  %_id_of_decl10 = alloca i64
  %_id_of_decl12 = alloca i64
  %_id_of_decl14 = alloca i64
  %_allocated_arg6 = alloca i64
  store i64 %n, i64* %_allocated_arg6
  store i64 1, i64* %_id_of_decl8
  store i64 0, i64* %_id_of_decl10
  store i64 1, i64* %_id_of_decl12
  store i64 1, i64* %_id_of_decl14
  %_exp_of_id16 = load i64, i64* %_allocated_arg6
  %_exp_of_bop17 = icmp eq i64 %_exp_of_id16, 1
  br i1 %_exp_of_bop17, label %_branch_of_eq19, label %_branch_of_neq20
_branch_of_eq19:
  ret i64 1
_branch_of_neq20:
  br label %_merge18
_merge18:
  %_exp_of_id21 = load i64, i64* %_allocated_arg6
  %_exp_of_bop22 = icmp eq i64 %_exp_of_id21, 2
  br i1 %_exp_of_bop22, label %_branch_of_eq24, label %_branch_of_neq25
_branch_of_eq24:
  ret i64 2
_branch_of_neq25:
  br label %_merge23
_merge23:
  br label %_entry40
_entry40:
  %_exp_of_id26 = load i64, i64* %_id_of_decl8
  %_exp_of_id27 = load i64, i64* %_allocated_arg6
  %_exp_of_bop28 = icmp slt i64 %_exp_of_id26, %_exp_of_id27
  br i1 %_exp_of_bop28, label %_body41, label %_exit42
_body41:
  %_exp_of_id29 = load i64, i64* %_id_of_decl12
  %_exp_of_id30 = load i64, i64* %_id_of_decl14
  %_exp_of_bop31 = add i64 %_exp_of_id29, %_exp_of_id30
  store i64 %_exp_of_bop31, i64* %_id_of_decl10
  %_exp_of_id33 = load i64, i64* %_id_of_decl14
  store i64 %_exp_of_id33, i64* %_id_of_decl12
  %_exp_of_id35 = load i64, i64* %_id_of_decl10
  store i64 %_exp_of_id35, i64* %_id_of_decl14
  %_exp_of_id37 = load i64, i64* %_id_of_decl8
  %_exp_of_bop38 = add i64 %_exp_of_id37, 1
  store i64 %_exp_of_bop38, i64* %_id_of_decl8
  br label %_entry40
_exit42:
  %_exp_of_id43 = load i64, i64* %_id_of_decl10
  ret i64 %_exp_of_id43
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_allocated_arg1 = alloca i64
  store i64 %argc, i64* %_allocated_arg1
  %_allocated_arg3 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg3
  %_exp_of_call5 = call i64 @stairClimb(i64 12)
  ret i64 %_exp_of_call5
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

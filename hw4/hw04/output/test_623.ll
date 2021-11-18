; generated from: hw4programs/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_allocated_arg12 = alloca i64
  store i64 %x, i64* %_allocated_arg12
  %_allocated_arg14 = alloca i64
  store i64 %y, i64* %_allocated_arg14
  %_exp_of_id16 = load i64, i64* %_allocated_arg12
  %_exp_of_id17 = load i64, i64* %_allocated_arg14
  %_exp_of_bop18 = icmp eq i64 %_exp_of_id16, %_exp_of_id17
  br i1 %_exp_of_bop18, label %_branch_of_eq21, label %_branch_of_neq22
_branch_of_eq21:
  %_exp_of_id19 = load i64, i64* %_allocated_arg12
  ret i64 %_exp_of_id19
_branch_of_neq22:
  br label %_merge20
_merge20:
  %_exp_of_id23 = load i64, i64* %_allocated_arg12
  %_exp_of_bop24 = icmp eq i64 %_exp_of_id23, 0
  br i1 %_exp_of_bop24, label %_branch_of_eq27, label %_branch_of_neq28
_branch_of_eq27:
  %_exp_of_id25 = load i64, i64* %_allocated_arg14
  ret i64 %_exp_of_id25
_branch_of_neq28:
  br label %_merge26
_merge26:
  %_exp_of_id29 = load i64, i64* %_allocated_arg14
  %_exp_of_bop30 = icmp eq i64 %_exp_of_id29, 0
  br i1 %_exp_of_bop30, label %_branch_of_eq33, label %_branch_of_neq34
_branch_of_eq33:
  %_exp_of_id31 = load i64, i64* %_allocated_arg12
  ret i64 %_exp_of_id31
_branch_of_neq34:
  br label %_merge32
_merge32:
  %_exp_of_id35 = load i64, i64* %_allocated_arg12
  %_id_of_uop36 = xor i64 %_exp_of_id35, -1
  %_exp_of_bop37 = and i64 %_id_of_uop36, 1
  %_exp_of_bop38 = icmp eq i64 %_exp_of_bop37, 1
  br i1 %_exp_of_bop38, label %_branch_of_eq56, label %_branch_of_neq57
_branch_of_eq56:
  %_exp_of_id39 = load i64, i64* %_allocated_arg14
  %_exp_of_bop40 = and i64 %_exp_of_id39, 1
  %_exp_of_bop41 = icmp eq i64 %_exp_of_bop40, 1
  br i1 %_exp_of_bop41, label %_branch_of_eq53, label %_branch_of_neq54
_branch_of_eq53:
  %_exp_of_id43 = load i64, i64* %_allocated_arg12
  %_exp_of_bop44 = lshr i64 %_exp_of_id43, 1
  %_exp_of_id45 = load i64, i64* %_allocated_arg14
  %_exp_of_call42 = call i64 @binary_gcd(i64 %_exp_of_bop44, i64 %_exp_of_id45)
  ret i64 %_exp_of_call42
_branch_of_neq54:
  %_exp_of_id47 = load i64, i64* %_allocated_arg12
  %_exp_of_bop48 = lshr i64 %_exp_of_id47, 1
  %_exp_of_id49 = load i64, i64* %_allocated_arg14
  %_exp_of_bop50 = lshr i64 %_exp_of_id49, 1
  %_exp_of_call46 = call i64 @binary_gcd(i64 %_exp_of_bop48, i64 %_exp_of_bop50)
  %_exp_of_bop51 = shl i64 %_exp_of_call46, 1
  ret i64 %_exp_of_bop51
_merge52:
  br label %_merge55
_branch_of_neq57:
  br label %_merge55
_merge55:
  %_exp_of_id58 = load i64, i64* %_allocated_arg14
  %_id_of_uop59 = xor i64 %_exp_of_id58, -1
  %_exp_of_bop60 = and i64 %_id_of_uop59, 1
  %_exp_of_bop61 = icmp eq i64 %_exp_of_bop60, 1
  br i1 %_exp_of_bop61, label %_branch_of_eq67, label %_branch_of_neq68
_branch_of_eq67:
  %_exp_of_id63 = load i64, i64* %_allocated_arg12
  %_exp_of_id64 = load i64, i64* %_allocated_arg14
  %_exp_of_bop65 = lshr i64 %_exp_of_id64, 1
  %_exp_of_call62 = call i64 @binary_gcd(i64 %_exp_of_id63, i64 %_exp_of_bop65)
  ret i64 %_exp_of_call62
_branch_of_neq68:
  br label %_merge66
_merge66:
  %_exp_of_id69 = load i64, i64* %_allocated_arg12
  %_exp_of_id70 = load i64, i64* %_allocated_arg14
  %_exp_of_bop71 = icmp sgt i64 %_exp_of_id69, %_exp_of_id70
  br i1 %_exp_of_bop71, label %_branch_of_eq79, label %_branch_of_neq80
_branch_of_eq79:
  %_exp_of_id73 = load i64, i64* %_allocated_arg12
  %_exp_of_id74 = load i64, i64* %_allocated_arg14
  %_exp_of_bop75 = sub i64 %_exp_of_id73, %_exp_of_id74
  %_exp_of_bop76 = lshr i64 %_exp_of_bop75, 1
  %_exp_of_id77 = load i64, i64* %_allocated_arg14
  %_exp_of_call72 = call i64 @binary_gcd(i64 %_exp_of_bop76, i64 %_exp_of_id77)
  ret i64 %_exp_of_call72
_branch_of_neq80:
  br label %_merge78
_merge78:
  %_exp_of_id82 = load i64, i64* %_allocated_arg14
  %_exp_of_id83 = load i64, i64* %_allocated_arg12
  %_exp_of_bop84 = sub i64 %_exp_of_id82, %_exp_of_id83
  %_exp_of_bop85 = lshr i64 %_exp_of_bop84, 1
  %_exp_of_id86 = load i64, i64* %_allocated_arg12
  %_exp_of_call81 = call i64 @binary_gcd(i64 %_exp_of_bop85, i64 %_exp_of_id86)
  ret i64 %_exp_of_call81
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl5 = alloca i64
  %_id_of_decl7 = alloca i64
  %_allocated_arg1 = alloca i64
  store i64 %argc, i64* %_allocated_arg1
  %_allocated_arg3 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg3
  store i64 21, i64* %_id_of_decl5
  store i64 15, i64* %_id_of_decl7
  %_exp_of_id10 = load i64, i64* %_id_of_decl5
  %_exp_of_id11 = load i64, i64* %_id_of_decl7
  %_exp_of_call9 = call i64 @binary_gcd(i64 %_exp_of_id10, i64 %_exp_of_id11)
  ret i64 %_exp_of_call9
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

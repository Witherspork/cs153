; generated from: hw4programs/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl552 = alloca i64
  %_id_of_decl554 = alloca i64
  %_allocated_arg548 = alloca i64
  store i64 %argc, i64* %_allocated_arg548
  %_allocated_arg550 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg550
  store i64 9, i64* %_id_of_decl552
  %_exp_of_id555 = load i64, i64* %_id_of_decl552
  %_exp_of_id556 = load i64, i64* %_id_of_decl552
  %_exp_of_bop557 = add i64 %_exp_of_id555, %_exp_of_id556
  store i64 %_exp_of_bop557, i64* %_id_of_decl554
  %_exp_of_id559 = load i64, i64* %_id_of_decl552
  %_exp_of_id560 = load i64, i64* %_id_of_decl552
  %_exp_of_id561 = load i64, i64* %_id_of_decl552
  %_exp_of_bop562 = mul i64 %_exp_of_id560, %_exp_of_id561
  %_exp_of_bop563 = add i64 %_exp_of_id559, %_exp_of_bop562
  %_exp_of_id564 = load i64, i64* %_id_of_decl554
  %_exp_of_bop565 = sub i64 %_exp_of_bop563, %_exp_of_id564
  %_exp_of_bop566 = lshr i64 %_exp_of_bop565, 2
  %_exp_of_bop567 = shl i64 %_exp_of_bop566, 2
  %_exp_of_bop568 = ashr i64 %_exp_of_bop567, 2
  ret i64 %_exp_of_bop568
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

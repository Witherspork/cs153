; generated from: hw4programs/easyrun3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl14 = alloca i64
  %_id_of_decl16 = alloca i64
  %_allocated_arg10 = alloca i64
  store i64 %argc, i64* %_allocated_arg10
  %_allocated_arg12 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg12
  store i64 0, i64* %_id_of_decl14
  store i64 0, i64* %_id_of_decl16
  br label %_entry29
_entry29:
  %_exp_of_id18 = load i64, i64* %_id_of_decl16
  %_exp_of_bop19 = icmp slt i64 %_exp_of_id18, 10
  br i1 %_exp_of_bop19, label %_body30, label %_exit31
_body30:
  %_exp_of_id20 = load i64, i64* %_id_of_decl14
  %_exp_of_id21 = load i64, i64* %_id_of_decl16
  %_exp_of_bop22 = add i64 %_exp_of_id20, %_exp_of_id21
  %_exp_of_id23 = load i64, i64* %_id_of_decl16
  %_exp_of_bop24 = mul i64 %_exp_of_bop22, %_exp_of_id23
  store i64 %_exp_of_bop24, i64* %_id_of_decl14
  %_exp_of_id26 = load i64, i64* %_id_of_decl16
  %_exp_of_bop27 = add i64 %_exp_of_id26, 1
  store i64 %_exp_of_bop27, i64* %_id_of_decl16
  br label %_entry29
_exit31:
  %_exp_of_id32 = load i64, i64* %_id_of_decl14
  ret i64 %_exp_of_id32
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

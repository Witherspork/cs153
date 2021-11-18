; generated from: hw4programs/easyrun4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl37 = alloca i64
  %_i39 = alloca i64
  %_allocated_arg33 = alloca i64
  store i64 %argc, i64* %_allocated_arg33
  %_allocated_arg35 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg35
  store i64 0, i64* %_id_of_decl37
  store i64 0, i64* %_i39
  br label %_entry49
_entry49:
  %_exp_of_id41 = load i64, i64* %_i39
  %_exp_of_bop42 = icmp slt i64 %_exp_of_id41, 3
  br i1 %_exp_of_bop42, label %_body50, label %_exit51
_body50:
  %_exp_of_id43 = load i64, i64* %_id_of_decl37
  %_exp_of_bop44 = add i64 %_exp_of_id43, 2
  store i64 %_exp_of_bop44, i64* %_id_of_decl37
  %_exp_of_id46 = load i64, i64* %_i39
  %_exp_of_bop47 = add i64 %_exp_of_id46, 1
  store i64 %_exp_of_bop47, i64* %_i39
  br label %_entry49
_exit51:
  %_exp_of_id52 = load i64, i64* %_id_of_decl37
  ret i64 %_exp_of_id52
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

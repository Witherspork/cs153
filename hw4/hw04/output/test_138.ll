; generated from: hw4programs/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11
@_const_of_global616 = global i64 11

define i64 @f() {
  %_id_of_decl613 = alloca i64
  store i64 12, i64* %_id_of_decl613
  %_exp_of_id615 = load i64, i64* %_id_of_decl613
  ret i64 %_exp_of_id615
}

define i64 @g() {
  %_id_of_decl610 = alloca i64
  store i64 10, i64* %_id_of_decl610
  %_exp_of_id612 = load i64, i64* %_id_of_decl610
  ret i64 %_exp_of_id612
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_allocated_arg601 = alloca i64
  store i64 %argc, i64* %_allocated_arg601
  %_allocated_arg603 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg603
  %_exp_of_call605 = call i64 @f()
  %_exp_of_call606 = call i64 @g()
  %_exp_of_bop607 = add i64 %_exp_of_call605, %_exp_of_call606
  %_exp_of_id608 = load i64, i64* @i
  %_exp_of_bop609 = add i64 %_exp_of_bop607, %_exp_of_id608
  ret i64 %_exp_of_bop609
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

; generated from: hw4programs/run40.oat
target triple = "x86_64-unknown-linux"
@i = global i64 8
@_const_of_global904 = global i64 8

define i64 @f() {
  %_id_of_decl899 = alloca i64
  store i64 0, i64* %_id_of_decl899
  %_exp_of_call901 = call i64 @g()
  store i64 %_exp_of_call901, i64* %_id_of_decl899
  %_exp_of_id903 = load i64, i64* %_id_of_decl899
  ret i64 %_exp_of_id903
}

define i64 @g() {
  %_exp_of_id898 = load i64, i64* @i
  ret i64 %_exp_of_id898
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_allocated_arg893 = alloca i64
  store i64 %argc, i64* %_allocated_arg893
  %_allocated_arg895 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg895
  %_exp_of_call897 = call i64 @f()
  ret i64 %_exp_of_call897
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

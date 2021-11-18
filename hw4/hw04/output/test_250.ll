; generated from: hw4programs/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_exp_of_call850 = call i64 @f2()
  ret i64 %_exp_of_call850
}

define i64 @f2() {
  %_exp_of_call849 = call i64 @f3()
  ret i64 %_exp_of_call849
}

define i64 @f3() {
  %_exp_of_call848 = call i64 @f4()
  ret i64 %_exp_of_call848
}

define i64 @f4() {
  %_exp_of_call847 = call i64 @f5()
  ret i64 %_exp_of_call847
}

define i64 @f5() {
  %_exp_of_call846 = call i64 @f6()
  ret i64 %_exp_of_call846
}

define i64 @f6() {
  %_exp_of_call845 = call i64 @f7()
  ret i64 %_exp_of_call845
}

define i64 @f7() {
  %_exp_of_call844 = call i64 @f8()
  ret i64 %_exp_of_call844
}

define i64 @f8() {
  %_exp_of_call843 = call i64 @f9()
  ret i64 %_exp_of_call843
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_allocated_arg838 = alloca i64
  store i64 %argc, i64* %_allocated_arg838
  %_allocated_arg840 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg840
  %_exp_of_call842 = call i64 @f1()
  ret i64 %_exp_of_call842
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

; generated from: hw4programs/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_allocated_arg913 = alloca i64
  store i64 %x1, i64* %_allocated_arg913
  %_allocated_arg915 = alloca i64
  store i64 %x2, i64* %_allocated_arg915
  %_allocated_arg917 = alloca i64
  store i64 %x3, i64* %_allocated_arg917
  %_allocated_arg919 = alloca i64
  store i64 %x4, i64* %_allocated_arg919
  %_allocated_arg921 = alloca i64
  store i64 %x5, i64* %_allocated_arg921
  %_allocated_arg923 = alloca i64
  store i64 %x6, i64* %_allocated_arg923
  %_allocated_arg925 = alloca i64
  store i64 %x7, i64* %_allocated_arg925
  %_allocated_arg927 = alloca i64
  store i64 %x8, i64* %_allocated_arg927
  %_exp_of_id929 = load i64, i64* %_allocated_arg913
  %_exp_of_id930 = load i64, i64* %_allocated_arg915
  %_exp_of_bop931 = add i64 %_exp_of_id929, %_exp_of_id930
  %_exp_of_id932 = load i64, i64* %_allocated_arg917
  %_exp_of_bop933 = add i64 %_exp_of_bop931, %_exp_of_id932
  %_exp_of_id934 = load i64, i64* %_allocated_arg919
  %_exp_of_bop935 = add i64 %_exp_of_bop933, %_exp_of_id934
  %_exp_of_id936 = load i64, i64* %_allocated_arg921
  %_exp_of_bop937 = add i64 %_exp_of_bop935, %_exp_of_id936
  %_exp_of_id938 = load i64, i64* %_allocated_arg923
  %_exp_of_bop939 = add i64 %_exp_of_bop937, %_exp_of_id938
  %_exp_of_id940 = load i64, i64* %_allocated_arg925
  %_exp_of_bop941 = add i64 %_exp_of_bop939, %_exp_of_id940
  %_exp_of_id942 = load i64, i64* %_allocated_arg927
  %_exp_of_bop943 = add i64 %_exp_of_bop941, %_exp_of_id942
  ret i64 %_exp_of_bop943
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_allocated_arg905 = alloca i64
  store i64 %argc, i64* %_allocated_arg905
  %_allocated_arg907 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg907
  %_id_of_uop910 = sub i64 0, 5
  %_id_of_uop911 = sub i64 0, 4
  %_id_of_uop912 = sub i64 0, 3
  %_exp_of_call909 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_id_of_uop910, i64 %_id_of_uop911, i64 %_id_of_uop912)
  ret i64 %_exp_of_call909
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

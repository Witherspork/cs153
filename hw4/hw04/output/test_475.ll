; generated from: hw4programs/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_allocated_arg888 = alloca i64
  store i64 %i, i64* %_allocated_arg888
  %_exp_of_id891 = load i64, i64* %_allocated_arg888
  %_exp_of_call890 = call i64 @f2(i64 %_exp_of_id891)
  ret i64 %_exp_of_call890
}

define i64 @f2(i64 %i) {
  %_allocated_arg884 = alloca i64
  store i64 %i, i64* %_allocated_arg884
  %_exp_of_id887 = load i64, i64* %_allocated_arg884
  %_exp_of_call886 = call i64 @f3(i64 %_exp_of_id887)
  ret i64 %_exp_of_call886
}

define i64 @f3(i64 %i) {
  %_allocated_arg880 = alloca i64
  store i64 %i, i64* %_allocated_arg880
  %_exp_of_id883 = load i64, i64* %_allocated_arg880
  %_exp_of_call882 = call i64 @f4(i64 %_exp_of_id883)
  ret i64 %_exp_of_call882
}

define i64 @f4(i64 %i) {
  %_allocated_arg876 = alloca i64
  store i64 %i, i64* %_allocated_arg876
  %_exp_of_id879 = load i64, i64* %_allocated_arg876
  %_exp_of_call878 = call i64 @f5(i64 %_exp_of_id879)
  ret i64 %_exp_of_call878
}

define i64 @f5(i64 %i) {
  %_allocated_arg872 = alloca i64
  store i64 %i, i64* %_allocated_arg872
  %_exp_of_id875 = load i64, i64* %_allocated_arg872
  %_exp_of_call874 = call i64 @f6(i64 %_exp_of_id875)
  ret i64 %_exp_of_call874
}

define i64 @f6(i64 %i) {
  %_allocated_arg868 = alloca i64
  store i64 %i, i64* %_allocated_arg868
  %_exp_of_id871 = load i64, i64* %_allocated_arg868
  %_exp_of_call870 = call i64 @f7(i64 %_exp_of_id871)
  ret i64 %_exp_of_call870
}

define i64 @f7(i64 %i) {
  %_allocated_arg864 = alloca i64
  store i64 %i, i64* %_allocated_arg864
  %_exp_of_id867 = load i64, i64* %_allocated_arg864
  %_exp_of_call866 = call i64 @f8(i64 %_exp_of_id867)
  ret i64 %_exp_of_call866
}

define i64 @f8(i64 %i) {
  %_allocated_arg860 = alloca i64
  store i64 %i, i64* %_allocated_arg860
  %_exp_of_id863 = load i64, i64* %_allocated_arg860
  %_exp_of_call862 = call i64 @f9(i64 %_exp_of_id863)
  ret i64 %_exp_of_call862
}

define i64 @f9(i64 %i) {
  %_allocated_arg857 = alloca i64
  store i64 %i, i64* %_allocated_arg857
  %_exp_of_id859 = load i64, i64* %_allocated_arg857
  ret i64 %_exp_of_id859
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_allocated_arg851 = alloca i64
  store i64 %argc, i64* %_allocated_arg851
  %_allocated_arg853 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg853
  %_exp_of_id856 = load i64, i64* %_allocated_arg851
  %_exp_of_call855 = call i64 @f1(i64 %_exp_of_id856)
  ret i64 %_exp_of_call855
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

; generated from: hw4programs/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_id_of_decl1087 = alloca i64
  %_allocated_arg1085 = alloca i64
  store i64 %x, i64* %_allocated_arg1085
  store i64 1, i64* %_id_of_decl1087
  br label %_entry1098
_entry1098:
  %_exp_of_id1089 = load i64, i64* %_allocated_arg1085
  %_exp_of_bop1090 = icmp sgt i64 %_exp_of_id1089, 0
  br i1 %_exp_of_bop1090, label %_body1099, label %_exit1100
_body1099:
  %_exp_of_id1091 = load i64, i64* %_id_of_decl1087
  %_exp_of_id1092 = load i64, i64* %_allocated_arg1085
  %_exp_of_bop1093 = mul i64 %_exp_of_id1091, %_exp_of_id1092
  store i64 %_exp_of_bop1093, i64* %_id_of_decl1087
  %_exp_of_id1095 = load i64, i64* %_allocated_arg1085
  %_exp_of_bop1096 = sub i64 %_exp_of_id1095, 1
  store i64 %_exp_of_bop1096, i64* %_allocated_arg1085
  br label %_entry1098
_exit1100:
  %_exp_of_id1101 = load i64, i64* %_id_of_decl1087
  ret i64 %_exp_of_id1101
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_allocated_arg1078 = alloca i64
  store i64 %argc, i64* %_allocated_arg1078
  %_allocated_arg1080 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg1080
  %_exp_of_call1084 = call i64 @fact(i64 5)
  %_exp_of_call1083 = call i8* @string_of_int(i64 %_exp_of_call1084)
  call void @print_string(i8* %_exp_of_call1083)
  ret i64 0
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

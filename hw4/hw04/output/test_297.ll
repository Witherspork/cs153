; generated from: hw4programs/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_id_of_decl3174 = alloca i64
  %_allocated_arg3172 = alloca i64
  store i64 %i, i64* %_allocated_arg3172
  store i64 0, i64* %_id_of_decl3174
  %_exp_of_id3176 = load i64, i64* %_allocated_arg3172
  %_exp_of_bop3177 = icmp eq i64 %_exp_of_id3176, 0
  br i1 %_exp_of_bop3177, label %_branch_of_eq3186, label %_branch_of_neq3187
_branch_of_eq3186:
  store i64 1, i64* %_id_of_decl3174
  br label %_merge3185
_branch_of_neq3187:
  %_exp_of_id3179 = load i64, i64* %_allocated_arg3172
  %_exp_of_id3181 = load i64, i64* %_allocated_arg3172
  %_exp_of_bop3182 = sub i64 %_exp_of_id3181, 1
  %_exp_of_call3180 = call i64 @f(i64 %_exp_of_bop3182)
  %_exp_of_bop3183 = mul i64 %_exp_of_id3179, %_exp_of_call3180
  store i64 %_exp_of_bop3183, i64* %_id_of_decl3174
  br label %_merge3185
_merge3185:
  %_exp_of_id3188 = load i64, i64* %_id_of_decl3174
  ret i64 %_exp_of_id3188
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_allocated_arg3167 = alloca i64
  store i64 %argc, i64* %_allocated_arg3167
  %_allocated_arg3169 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg3169
  %_exp_of_call3171 = call i64 @f(i64 5)
  ret i64 %_exp_of_call3171
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

; generated from: hw4programs/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_id_of_decl3135 = alloca { i64, [0 x i64] }*
  %_id_of_decl3139 = alloca { i64, [0 x i64] }*
  %_i3144 = alloca i64
  %_allocated_arg3129 = alloca i8*
  store i8* %str, i8** %_allocated_arg3129
  %_allocated_arg3131 = alloca i64
  store i64 %start, i64* %_allocated_arg3131
  %_allocated_arg3133 = alloca i64
  store i64 %len, i64* %_allocated_arg3133
  %_exp_of_id3137 = load i8*, i8** %_allocated_arg3129
  %_exp_of_call3136 = call { i64, [0 x i64] }* @array_of_string(i8* %_exp_of_id3137)
  store { i64, [0 x i64] }* %_exp_of_call3136, { i64, [0 x i64] }** %_id_of_decl3135
  %_exp_of_id3140 = load i64, i64* %_allocated_arg3133
  %_raw_array3141 = call i64* @oat_alloc_array(i64 %_exp_of_id3140)
  %_array3142 = bitcast i64* %_raw_array3141 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3142, { i64, [0 x i64] }** %_id_of_decl3139
  store i64 0, i64* %_i3144
  br label %_entry3162
_entry3162:
  %_exp_of_id3146 = load i64, i64* %_i3144
  %_exp_of_id3147 = load i64, i64* %_allocated_arg3133
  %_exp_of_bop3148 = icmp slt i64 %_exp_of_id3146, %_exp_of_id3147
  br i1 %_exp_of_bop3148, label %_body3163, label %_exit3164
_body3163:
  %_exp_of_id3151 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3135
  %_exp_of_id3152 = load i64, i64* %_i3144
  %_exp_of_id3153 = load i64, i64* %_allocated_arg3131
  %_exp_of_bop3154 = add i64 %_exp_of_id3152, %_exp_of_id3153
  %_id_of_index3149 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3151, i32 0, i32 1, i64 %_exp_of_bop3154
  %_id_of_load3150 = load i64, i64* %_id_of_index3149
  %_exp_of_id3156 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3139
  %_exp_of_id3157 = load i64, i64* %_i3144
  %_id_of_gep_exp3158 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3156, i32 0, i32 1, i64 %_exp_of_id3157
  store i64 %_id_of_load3150, i64* %_id_of_gep_exp3158
  %_exp_of_id3159 = load i64, i64* %_i3144
  %_exp_of_bop3160 = add i64 %_exp_of_id3159, 1
  store i64 %_exp_of_bop3160, i64* %_i3144
  br label %_entry3162
_exit3164:
  %_exp_of_id3166 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3139
  %_exp_of_call3165 = call i8* @string_of_array({ i64, [0 x i64] }* %_exp_of_id3166)
  ret i8* %_exp_of_call3165
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_allocated_arg3120 = alloca i64
  store i64 %argc, i64* %_allocated_arg3120
  %_allocated_arg3122 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg3122
  %_exp_of_id3128 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_allocated_arg3122
  %_id_of_index3126 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_exp_of_id3128, i32 0, i32 1, i32 1
  %_id_of_load3127 = load i8*, i8** %_id_of_index3126
  %_exp_of_call3125 = call i8* @sub(i8* %_id_of_load3127, i64 3, i64 5)
  call void @print_string(i8* %_exp_of_call3125)
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

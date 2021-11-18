; generated from: hw4programs/easyrun9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl122 = alloca { i64, [0 x i64] }*
  %_id_of_decl134 = alloca i64
  %_i136 = alloca i64
  %_allocated_arg118 = alloca i64
  store i64 %argc, i64* %_allocated_arg118
  %_allocated_arg120 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg120
  %_raw_array123 = call i64* @oat_alloc_array(i64 4)
  %_array124 = bitcast i64* %_raw_array123 to { i64, [0 x i64] }*
  %_id_of_gep125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array124, i32 0, i32 1, i32 0
  store i64 1, i64* %_id_of_gep125
  %_id_of_gep127 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array124, i32 0, i32 1, i32 1
  store i64 2, i64* %_id_of_gep127
  %_id_of_gep129 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array124, i32 0, i32 1, i32 2
  store i64 3, i64* %_id_of_gep129
  %_id_of_gep131 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array124, i32 0, i32 1, i32 3
  store i64 4, i64* %_id_of_gep131
  store { i64, [0 x i64] }* %_array124, { i64, [0 x i64] }** %_id_of_decl122
  store i64 0, i64* %_id_of_decl134
  store i64 0, i64* %_i136
  br label %_entry154
_entry154:
  %_exp_of_id138 = load i64, i64* %_i136
  %_exp_of_bop139 = icmp slt i64 %_exp_of_id138, 4
  br i1 %_exp_of_bop139, label %_body155, label %_exit156
_body155:
  %_exp_of_id142 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl122
  %_exp_of_id143 = load i64, i64* %_i136
  %_id_of_index140 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id142, i32 0, i32 1, i64 %_exp_of_id143
  %_id_of_load141 = load i64, i64* %_id_of_index140
  %_exp_of_id146 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl122
  %_exp_of_id147 = load i64, i64* %_i136
  %_id_of_index144 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id146, i32 0, i32 1, i64 %_exp_of_id147
  %_id_of_load145 = load i64, i64* %_id_of_index144
  %_id_of_uop148 = xor i64 %_id_of_load145, -1
  %_exp_of_bop149 = mul i64 %_id_of_load141, %_id_of_uop148
  store i64 %_exp_of_bop149, i64* %_id_of_decl134
  %_exp_of_id151 = load i64, i64* %_i136
  %_exp_of_bop152 = add i64 %_exp_of_id151, 1
  store i64 %_exp_of_bop152, i64* %_i136
  br label %_entry154
_exit156:
  %_exp_of_id157 = load i64, i64* %_id_of_decl134
  ret i64 %_exp_of_id157
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

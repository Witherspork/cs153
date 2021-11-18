; generated from: hw4programs/easyrun10.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl162 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_id_of_decl190 = alloca i64
  %_i192 = alloca i64
  %_allocated_arg158 = alloca i64
  store i64 %argc, i64* %_allocated_arg158
  %_allocated_arg160 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg160
  %_raw_array163 = call i64* @oat_alloc_array(i64 4)
  %_array164 = bitcast i64* %_raw_array163 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array165 = call i64* @oat_alloc_array(i64 1)
  %_array166 = bitcast i64* %_raw_array165 to { i64, [0 x i64] }*
  %_id_of_gep167 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array166, i32 0, i32 1, i32 0
  store i64 1, i64* %_id_of_gep167
  %_raw_array169 = call i64* @oat_alloc_array(i64 1)
  %_array170 = bitcast i64* %_raw_array169 to { i64, [0 x i64] }*
  %_id_of_gep171 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array170, i32 0, i32 1, i32 0
  store i64 2, i64* %_id_of_gep171
  %_raw_array173 = call i64* @oat_alloc_array(i64 1)
  %_array174 = bitcast i64* %_raw_array173 to { i64, [0 x i64] }*
  %_id_of_gep175 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array174, i32 0, i32 1, i32 0
  store i64 3, i64* %_id_of_gep175
  %_raw_array177 = call i64* @oat_alloc_array(i64 1)
  %_array178 = bitcast i64* %_raw_array177 to { i64, [0 x i64] }*
  %_id_of_gep179 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array178, i32 0, i32 1, i32 0
  store i64 4, i64* %_id_of_gep179
  %_id_of_gep181 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array164, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array166, { i64, [0 x i64] }** %_id_of_gep181
  %_id_of_gep183 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array164, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array170, { i64, [0 x i64] }** %_id_of_gep183
  %_id_of_gep185 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array164, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array174, { i64, [0 x i64] }** %_id_of_gep185
  %_id_of_gep187 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array164, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array178, { i64, [0 x i64] }** %_id_of_gep187
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array164, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl162
  store i64 0, i64* %_id_of_decl190
  store i64 0, i64* %_i192
  br label %_entry208
_entry208:
  %_exp_of_id194 = load i64, i64* %_i192
  %_exp_of_bop195 = icmp slt i64 %_exp_of_id194, 4
  br i1 %_exp_of_bop195, label %_body209, label %_exit210
_body209:
  %_exp_of_id200 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl162
  %_exp_of_id201 = load i64, i64* %_i192
  %_id_of_index198 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id200, i32 0, i32 1, i64 %_exp_of_id201
  %_id_of_load199 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index198
  %_id_of_index196 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load199, i32 0, i32 1, i32 0
  %_id_of_load197 = load i64, i64* %_id_of_index196
  %_exp_of_id202 = load i64, i64* %_id_of_decl190
  %_exp_of_bop203 = sub i64 %_id_of_load197, %_exp_of_id202
  store i64 %_exp_of_bop203, i64* %_id_of_decl190
  %_exp_of_id205 = load i64, i64* %_i192
  %_exp_of_bop206 = add i64 %_exp_of_id205, 1
  store i64 %_exp_of_bop206, i64* %_i192
  br label %_entry208
_exit210:
  %_id_of_uop211 = xor i64 5, -1
  %_exp_of_bop212 = and i64 5, %_id_of_uop211
  %_exp_of_bop213 = or i64 %_exp_of_bop212, 0
  %_exp_of_bop214 = icmp ne i64 %_exp_of_bop213, 0
  br i1 %_exp_of_bop214, label %_branch_of_eq219, label %_branch_of_neq220
_branch_of_eq219:
  %_exp_of_id215 = load i64, i64* %_id_of_decl190
  ret i64 %_exp_of_id215
_branch_of_neq220:
  %_exp_of_id216 = load i64, i64* %_id_of_decl190
  %_id_of_uop217 = sub i64 0, %_exp_of_id216
  ret i64 %_id_of_uop217
_merge218:
  %_exp_of_id221 = load i64, i64* %_id_of_decl190
  ret i64 %_exp_of_id221
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

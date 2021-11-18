; generated from: hw4programs/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %arr, i64 %size) {
  %_id_of_decl6143 = alloca { i64, [0 x i64] }*
  %_id_of_decl6148 = alloca i64
  %_i6156 = alloca i64
  %_j6161 = alloca i64
  %_allocated_arg6139 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_allocated_arg6139
  %_allocated_arg6141 = alloca i64
  store i64 %size, i64* %_allocated_arg6141
  %_exp_of_id6144 = load i64, i64* %_allocated_arg6141
  %_raw_array6145 = call i64* @oat_alloc_array(i64 %_exp_of_id6144)
  %_array6146 = bitcast i64* %_raw_array6145 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6146, { i64, [0 x i64] }** %_id_of_decl6143
  store i64 0, i64* %_id_of_decl6148
  %_exp_of_id6152 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg6139
  %_id_of_index6150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6152, i32 0, i32 1, i32 0
  %_id_of_load6151 = load i64, i64* %_id_of_index6150
  %_exp_of_id6154 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl6143
  %_id_of_gep_exp6155 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6154, i32 0, i32 1, i32 0
  store i64 %_id_of_load6151, i64* %_id_of_gep_exp6155
  store i64 0, i64* %_i6156
  br label %_entry6229
_entry6229:
  %_exp_of_id6158 = load i64, i64* %_i6156
  %_exp_of_id6159 = load i64, i64* %_allocated_arg6141
  %_exp_of_bop6160 = icmp slt i64 %_exp_of_id6158, %_exp_of_id6159
  br i1 %_exp_of_bop6160, label %_body6230, label %_exit6231
_body6230:
  store i64 0, i64* %_j6161
  br label %_entry6209
_entry6209:
  %_exp_of_id6163 = load i64, i64* %_j6161
  %_exp_of_id6164 = load i64, i64* %_i6156
  %_exp_of_bop6165 = icmp slt i64 %_exp_of_id6163, %_exp_of_id6164
  br i1 %_exp_of_bop6165, label %_body6210, label %_exit6211
_body6210:
  %_exp_of_id6168 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg6139
  %_exp_of_id6169 = load i64, i64* %_i6156
  %_id_of_index6166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6168, i32 0, i32 1, i64 %_exp_of_id6169
  %_id_of_load6167 = load i64, i64* %_id_of_index6166
  %_exp_of_id6172 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg6139
  %_exp_of_id6173 = load i64, i64* %_j6161
  %_id_of_index6170 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6172, i32 0, i32 1, i64 %_exp_of_id6173
  %_id_of_load6171 = load i64, i64* %_id_of_index6170
  %_exp_of_bop6174 = icmp sgt i64 %_id_of_load6167, %_id_of_load6171
  %_exp_of_id6177 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl6143
  %_exp_of_id6178 = load i64, i64* %_i6156
  %_id_of_index6175 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6177, i32 0, i32 1, i64 %_exp_of_id6178
  %_id_of_load6176 = load i64, i64* %_id_of_index6175
  %_exp_of_id6181 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl6143
  %_exp_of_id6182 = load i64, i64* %_j6161
  %_id_of_index6179 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6181, i32 0, i32 1, i64 %_exp_of_id6182
  %_id_of_load6180 = load i64, i64* %_id_of_index6179
  %_exp_of_id6185 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg6139
  %_exp_of_id6186 = load i64, i64* %_i6156
  %_id_of_index6183 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6185, i32 0, i32 1, i64 %_exp_of_id6186
  %_id_of_load6184 = load i64, i64* %_id_of_index6183
  %_exp_of_bop6187 = add i64 %_id_of_load6180, %_id_of_load6184
  %_exp_of_bop6188 = icmp slt i64 %_id_of_load6176, %_exp_of_bop6187
  %_exp_of_bop6189 = and i1 %_exp_of_bop6174, %_exp_of_bop6188
  br i1 %_exp_of_bop6189, label %_branch_of_eq6204, label %_branch_of_neq6205
_branch_of_eq6204:
  %_exp_of_id6192 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl6143
  %_exp_of_id6193 = load i64, i64* %_j6161
  %_id_of_index6190 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6192, i32 0, i32 1, i64 %_exp_of_id6193
  %_id_of_load6191 = load i64, i64* %_id_of_index6190
  %_exp_of_id6196 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg6139
  %_exp_of_id6197 = load i64, i64* %_i6156
  %_id_of_index6194 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6196, i32 0, i32 1, i64 %_exp_of_id6197
  %_id_of_load6195 = load i64, i64* %_id_of_index6194
  %_exp_of_bop6198 = add i64 %_id_of_load6191, %_id_of_load6195
  %_exp_of_id6200 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl6143
  %_exp_of_id6201 = load i64, i64* %_i6156
  %_id_of_gep_exp6202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6200, i32 0, i32 1, i64 %_exp_of_id6201
  store i64 %_exp_of_bop6198, i64* %_id_of_gep_exp6202
  br label %_merge6203
_branch_of_neq6205:
  br label %_merge6203
_merge6203:
  %_exp_of_id6206 = load i64, i64* %_j6161
  %_exp_of_bop6207 = add i64 %_exp_of_id6206, 1
  store i64 %_exp_of_bop6207, i64* %_j6161
  br label %_entry6209
_exit6211:
  %_exp_of_id6212 = load i64, i64* %_id_of_decl6148
  %_exp_of_id6215 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl6143
  %_exp_of_id6216 = load i64, i64* %_i6156
  %_id_of_index6213 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6215, i32 0, i32 1, i64 %_exp_of_id6216
  %_id_of_load6214 = load i64, i64* %_id_of_index6213
  %_exp_of_bop6217 = icmp slt i64 %_exp_of_id6212, %_id_of_load6214
  br i1 %_exp_of_bop6217, label %_branch_of_eq6224, label %_branch_of_neq6225
_branch_of_eq6224:
  %_exp_of_id6220 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl6143
  %_exp_of_id6221 = load i64, i64* %_i6156
  %_id_of_index6218 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id6220, i32 0, i32 1, i64 %_exp_of_id6221
  %_id_of_load6219 = load i64, i64* %_id_of_index6218
  store i64 %_id_of_load6219, i64* %_id_of_decl6148
  br label %_merge6223
_branch_of_neq6225:
  br label %_merge6223
_merge6223:
  %_exp_of_id6226 = load i64, i64* %_i6156
  %_exp_of_bop6227 = add i64 %_exp_of_id6226, 1
  store i64 %_exp_of_bop6227, i64* %_i6156
  br label %_entry6229
_exit6231:
  %_exp_of_id6232 = load i64, i64* %_id_of_decl6148
  ret i64 %_exp_of_id6232
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl6116 = alloca { i64, [0 x i64] }*
  %_id_of_decl6134 = alloca i64
  %_allocated_arg6112 = alloca i64
  store i64 %argc, i64* %_allocated_arg6112
  %_allocated_arg6114 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg6114
  %_raw_array6117 = call i64* @oat_alloc_array(i64 7)
  %_array6118 = bitcast i64* %_raw_array6117 to { i64, [0 x i64] }*
  %_id_of_gep6119 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6118, i32 0, i32 1, i32 0
  store i64 1, i64* %_id_of_gep6119
  %_id_of_gep6121 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6118, i32 0, i32 1, i32 1
  store i64 101, i64* %_id_of_gep6121
  %_id_of_gep6123 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6118, i32 0, i32 1, i32 2
  store i64 2, i64* %_id_of_gep6123
  %_id_of_gep6125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6118, i32 0, i32 1, i32 3
  store i64 3, i64* %_id_of_gep6125
  %_id_of_gep6127 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6118, i32 0, i32 1, i32 4
  store i64 101, i64* %_id_of_gep6127
  %_id_of_gep6129 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6118, i32 0, i32 1, i32 5
  store i64 4, i64* %_id_of_gep6129
  %_id_of_gep6131 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6118, i32 0, i32 1, i32 6
  store i64 5, i64* %_id_of_gep6131
  store { i64, [0 x i64] }* %_array6118, { i64, [0 x i64] }** %_id_of_decl6116
  %_exp_of_id6136 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl6116
  %_exp_of_call6135 = call i64 @maxsum({ i64, [0 x i64] }* %_exp_of_id6136, i64 7)
  store i64 %_exp_of_call6135, i64* %_id_of_decl6134
  %_exp_of_id6138 = load i64, i64* %_id_of_decl6134
  ret i64 %_exp_of_id6138
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

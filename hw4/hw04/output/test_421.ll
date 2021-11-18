; generated from: hw4programs/matrixmult.oat
target triple = "x86_64-unknown-linux"
@_exp_of_string4042 = global [2 x i8] c" \00"
@_exp_of_string4051 = global [2 x i8] c"	\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl4206 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_id_of_decl4230 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_id_of_decl4270 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_allocated_arg4202 = alloca i64
  store i64 %argc, i64* %_allocated_arg4202
  %_allocated_arg4204 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg4204
  %_raw_array4207 = call i64* @oat_alloc_array(i64 2)
  %_array4208 = bitcast i64* %_raw_array4207 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4209 = call i64* @oat_alloc_array(i64 3)
  %_array4210 = bitcast i64* %_raw_array4209 to { i64, [0 x i64] }*
  %_id_of_gep4211 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4210, i32 0, i32 1, i32 0
  store i64 1, i64* %_id_of_gep4211
  %_id_of_gep4213 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4210, i32 0, i32 1, i32 1
  store i64 3, i64* %_id_of_gep4213
  %_id_of_gep4215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4210, i32 0, i32 1, i32 2
  store i64 4, i64* %_id_of_gep4215
  %_raw_array4217 = call i64* @oat_alloc_array(i64 3)
  %_array4218 = bitcast i64* %_raw_array4217 to { i64, [0 x i64] }*
  %_id_of_gep4219 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4218, i32 0, i32 1, i32 0
  store i64 2, i64* %_id_of_gep4219
  %_id_of_gep4221 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4218, i32 0, i32 1, i32 1
  store i64 0, i64* %_id_of_gep4221
  %_id_of_gep4223 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4218, i32 0, i32 1, i32 2
  store i64 1, i64* %_id_of_gep4223
  %_id_of_gep4225 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4208, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4210, { i64, [0 x i64] }** %_id_of_gep4225
  %_id_of_gep4227 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4208, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4218, { i64, [0 x i64] }** %_id_of_gep4227
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4208, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl4206
  %_raw_array4231 = call i64* @oat_alloc_array(i64 3)
  %_array4232 = bitcast i64* %_raw_array4231 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4233 = call i64* @oat_alloc_array(i64 4)
  %_array4234 = bitcast i64* %_raw_array4233 to { i64, [0 x i64] }*
  %_id_of_gep4235 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4234, i32 0, i32 1, i32 0
  store i64 1, i64* %_id_of_gep4235
  %_id_of_gep4237 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4234, i32 0, i32 1, i32 1
  store i64 2, i64* %_id_of_gep4237
  %_id_of_gep4239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4234, i32 0, i32 1, i32 2
  store i64 3, i64* %_id_of_gep4239
  %_id_of_gep4241 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4234, i32 0, i32 1, i32 3
  store i64 1, i64* %_id_of_gep4241
  %_raw_array4243 = call i64* @oat_alloc_array(i64 4)
  %_array4244 = bitcast i64* %_raw_array4243 to { i64, [0 x i64] }*
  %_id_of_gep4245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4244, i32 0, i32 1, i32 0
  store i64 2, i64* %_id_of_gep4245
  %_id_of_gep4247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4244, i32 0, i32 1, i32 1
  store i64 2, i64* %_id_of_gep4247
  %_id_of_gep4249 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4244, i32 0, i32 1, i32 2
  store i64 2, i64* %_id_of_gep4249
  %_id_of_gep4251 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4244, i32 0, i32 1, i32 3
  store i64 2, i64* %_id_of_gep4251
  %_raw_array4253 = call i64* @oat_alloc_array(i64 4)
  %_array4254 = bitcast i64* %_raw_array4253 to { i64, [0 x i64] }*
  %_id_of_gep4255 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4254, i32 0, i32 1, i32 0
  store i64 3, i64* %_id_of_gep4255
  %_id_of_gep4257 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4254, i32 0, i32 1, i32 1
  store i64 2, i64* %_id_of_gep4257
  %_id_of_gep4259 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4254, i32 0, i32 1, i32 2
  store i64 1, i64* %_id_of_gep4259
  %_id_of_gep4261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4254, i32 0, i32 1, i32 3
  store i64 4, i64* %_id_of_gep4261
  %_id_of_gep4263 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4232, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4234, { i64, [0 x i64] }** %_id_of_gep4263
  %_id_of_gep4265 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4232, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4244, { i64, [0 x i64] }** %_id_of_gep4265
  %_id_of_gep4267 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4232, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4254, { i64, [0 x i64] }** %_id_of_gep4267
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4232, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl4230
  %_raw_array4271 = call i64* @oat_alloc_array(i64 2)
  %_array4272 = bitcast i64* %_raw_array4271 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4273 = call i64* @oat_alloc_array(i64 4)
  %_array4274 = bitcast i64* %_raw_array4273 to { i64, [0 x i64] }*
  %_id_of_gep4275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4274, i32 0, i32 1, i32 0
  store i64 0, i64* %_id_of_gep4275
  %_id_of_gep4277 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4274, i32 0, i32 1, i32 1
  store i64 0, i64* %_id_of_gep4277
  %_id_of_gep4279 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4274, i32 0, i32 1, i32 2
  store i64 0, i64* %_id_of_gep4279
  %_id_of_gep4281 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4274, i32 0, i32 1, i32 3
  store i64 0, i64* %_id_of_gep4281
  %_raw_array4283 = call i64* @oat_alloc_array(i64 4)
  %_array4284 = bitcast i64* %_raw_array4283 to { i64, [0 x i64] }*
  %_id_of_gep4285 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4284, i32 0, i32 1, i32 0
  store i64 0, i64* %_id_of_gep4285
  %_id_of_gep4287 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4284, i32 0, i32 1, i32 1
  store i64 0, i64* %_id_of_gep4287
  %_id_of_gep4289 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4284, i32 0, i32 1, i32 2
  store i64 0, i64* %_id_of_gep4289
  %_id_of_gep4291 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4284, i32 0, i32 1, i32 3
  store i64 0, i64* %_id_of_gep4291
  %_id_of_gep4293 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4272, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4274, { i64, [0 x i64] }** %_id_of_gep4293
  %_id_of_gep4295 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4272, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4284, { i64, [0 x i64] }** %_id_of_gep4295
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4272, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl4270
  %_exp_of_id4299 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl4206
  %_exp_of_id4300 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl4230
  %_exp_of_id4301 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl4270
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id4299, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id4300, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id4301)
  %_exp_of_id4303 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl4270
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id4303, i64 2)
  %_exp_of_id4305 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl4206
  %_exp_of_id4306 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl4230
  %_exp_of_id4307 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl4270
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id4305, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id4306, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id4307)
  %_exp_of_id4309 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl4270
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id4309, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_i4142 = alloca i64
  %_j4146 = alloca i64
  %_k4150 = alloca i64
  %_allocated_arg4136 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg4136
  %_allocated_arg4138 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg4138
  %_allocated_arg4140 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg4140
  store i64 0, i64* %_i4142
  br label %_entry4199
_entry4199:
  %_exp_of_id4144 = load i64, i64* %_i4142
  %_exp_of_bop4145 = icmp slt i64 %_exp_of_id4144, 2
  br i1 %_exp_of_bop4145, label %_body4200, label %_exit4201
_body4200:
  store i64 0, i64* %_j4146
  br label %_entry4193
_entry4193:
  %_exp_of_id4148 = load i64, i64* %_j4146
  %_exp_of_bop4149 = icmp slt i64 %_exp_of_id4148, 4
  br i1 %_exp_of_bop4149, label %_body4194, label %_exit4195
_body4194:
  store i64 0, i64* %_k4150
  br label %_entry4187
_entry4187:
  %_exp_of_id4152 = load i64, i64* %_k4150
  %_exp_of_bop4153 = icmp slt i64 %_exp_of_id4152, 3
  br i1 %_exp_of_bop4153, label %_body4188, label %_exit4189
_body4188:
  %_exp_of_id4158 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg4140
  %_exp_of_id4159 = load i64, i64* %_i4142
  %_id_of_index4156 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id4158, i32 0, i32 1, i64 %_exp_of_id4159
  %_id_of_load4157 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index4156
  %_exp_of_id4160 = load i64, i64* %_j4146
  %_id_of_index4154 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load4157, i32 0, i32 1, i64 %_exp_of_id4160
  %_id_of_load4155 = load i64, i64* %_id_of_index4154
  %_exp_of_id4165 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg4136
  %_exp_of_id4166 = load i64, i64* %_i4142
  %_id_of_index4163 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id4165, i32 0, i32 1, i64 %_exp_of_id4166
  %_id_of_load4164 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index4163
  %_exp_of_id4167 = load i64, i64* %_k4150
  %_id_of_index4161 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load4164, i32 0, i32 1, i64 %_exp_of_id4167
  %_id_of_load4162 = load i64, i64* %_id_of_index4161
  %_exp_of_id4172 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg4138
  %_exp_of_id4173 = load i64, i64* %_k4150
  %_id_of_index4170 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id4172, i32 0, i32 1, i64 %_exp_of_id4173
  %_id_of_load4171 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index4170
  %_exp_of_id4174 = load i64, i64* %_j4146
  %_id_of_index4168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load4171, i32 0, i32 1, i64 %_exp_of_id4174
  %_id_of_load4169 = load i64, i64* %_id_of_index4168
  %_exp_of_bop4175 = mul i64 %_id_of_load4162, %_id_of_load4169
  %_exp_of_bop4176 = add i64 %_id_of_load4155, %_exp_of_bop4175
  %_exp_of_id4180 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg4140
  %_exp_of_id4181 = load i64, i64* %_i4142
  %_id_of_index4178 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id4180, i32 0, i32 1, i64 %_exp_of_id4181
  %_id_of_load4179 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index4178
  %_exp_of_id4182 = load i64, i64* %_j4146
  %_id_of_gep_exp4183 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load4179, i32 0, i32 1, i64 %_exp_of_id4182
  store i64 %_exp_of_bop4176, i64* %_id_of_gep_exp4183
  %_exp_of_id4184 = load i64, i64* %_k4150
  %_exp_of_bop4185 = add i64 %_exp_of_id4184, 1
  store i64 %_exp_of_bop4185, i64* %_k4150
  br label %_entry4187
_exit4189:
  %_exp_of_id4190 = load i64, i64* %_j4146
  %_exp_of_bop4191 = add i64 %_exp_of_id4190, 1
  store i64 %_exp_of_bop4191, i64* %_j4146
  br label %_entry4193
_exit4195:
  %_exp_of_id4196 = load i64, i64* %_i4142
  %_exp_of_bop4197 = add i64 %_exp_of_id4196, 1
  store i64 %_exp_of_bop4197, i64* %_i4142
  br label %_entry4199
_exit4201:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_i4104 = alloca i64
  %_j4108 = alloca i64
  %_allocated_arg4098 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg4098
  %_allocated_arg4100 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg4100
  %_allocated_arg4102 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg4102
  store i64 0, i64* %_i4104
  br label %_entry4133
_entry4133:
  %_exp_of_id4106 = load i64, i64* %_i4104
  %_exp_of_bop4107 = icmp slt i64 %_exp_of_id4106, 2
  br i1 %_exp_of_bop4107, label %_body4134, label %_exit4135
_body4134:
  store i64 0, i64* %_j4108
  br label %_entry4127
_entry4127:
  %_exp_of_id4110 = load i64, i64* %_j4108
  %_exp_of_bop4111 = icmp slt i64 %_exp_of_id4110, 4
  br i1 %_exp_of_bop4111, label %_body4128, label %_exit4129
_body4128:
  %_exp_of_id4113 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg4098
  %_exp_of_id4114 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg4100
  %_exp_of_id4115 = load i64, i64* %_i4104
  %_exp_of_id4116 = load i64, i64* %_j4108
  %_exp_of_call4112 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id4113, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id4114, i64 %_exp_of_id4115, i64 %_exp_of_id4116)
  %_exp_of_id4120 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg4102
  %_exp_of_id4121 = load i64, i64* %_i4104
  %_id_of_index4118 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id4120, i32 0, i32 1, i64 %_exp_of_id4121
  %_id_of_load4119 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index4118
  %_exp_of_id4122 = load i64, i64* %_j4108
  %_id_of_gep_exp4123 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load4119, i32 0, i32 1, i64 %_exp_of_id4122
  store i64 %_exp_of_call4112, i64* %_id_of_gep_exp4123
  %_exp_of_id4124 = load i64, i64* %_j4108
  %_exp_of_bop4125 = add i64 %_exp_of_id4124, 1
  store i64 %_exp_of_bop4125, i64* %_j4108
  br label %_entry4127
_exit4129:
  %_exp_of_id4130 = load i64, i64* %_i4104
  %_exp_of_bop4131 = add i64 %_exp_of_id4130, 1
  store i64 %_exp_of_bop4131, i64* %_i4104
  br label %_entry4133
_exit4135:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, i64 %row, i64 %col) {
  %_id_of_decl4067 = alloca i64
  %_k4069 = alloca i64
  %_allocated_arg4059 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg4059
  %_allocated_arg4061 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg4061
  %_allocated_arg4063 = alloca i64
  store i64 %row, i64* %_allocated_arg4063
  %_allocated_arg4065 = alloca i64
  store i64 %col, i64* %_allocated_arg4065
  store i64 0, i64* %_id_of_decl4067
  store i64 0, i64* %_k4069
  br label %_entry4094
_entry4094:
  %_exp_of_id4071 = load i64, i64* %_k4069
  %_exp_of_bop4072 = icmp slt i64 %_exp_of_id4071, 3
  br i1 %_exp_of_bop4072, label %_body4095, label %_exit4096
_body4095:
  %_exp_of_id4073 = load i64, i64* %_id_of_decl4067
  %_exp_of_id4078 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg4059
  %_exp_of_id4079 = load i64, i64* %_allocated_arg4063
  %_id_of_index4076 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id4078, i32 0, i32 1, i64 %_exp_of_id4079
  %_id_of_load4077 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index4076
  %_exp_of_id4080 = load i64, i64* %_k4069
  %_id_of_index4074 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load4077, i32 0, i32 1, i64 %_exp_of_id4080
  %_id_of_load4075 = load i64, i64* %_id_of_index4074
  %_exp_of_id4085 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg4061
  %_exp_of_id4086 = load i64, i64* %_k4069
  %_id_of_index4083 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id4085, i32 0, i32 1, i64 %_exp_of_id4086
  %_id_of_load4084 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index4083
  %_exp_of_id4087 = load i64, i64* %_allocated_arg4065
  %_id_of_index4081 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load4084, i32 0, i32 1, i64 %_exp_of_id4087
  %_id_of_load4082 = load i64, i64* %_id_of_index4081
  %_exp_of_bop4088 = mul i64 %_id_of_load4075, %_id_of_load4082
  %_exp_of_bop4089 = add i64 %_exp_of_id4073, %_exp_of_bop4088
  store i64 %_exp_of_bop4089, i64* %_id_of_decl4067
  %_exp_of_id4091 = load i64, i64* %_k4069
  %_exp_of_bop4092 = add i64 %_exp_of_id4091, 1
  store i64 %_exp_of_bop4092, i64* %_k4069
  br label %_entry4094
_exit4096:
  %_exp_of_id4097 = load i64, i64* %_id_of_decl4067
  ret i64 %_exp_of_id4097
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %ar, i64 %n) {
  %_i4024 = alloca i64
  %_j4029 = alloca i64
  %_allocated_arg4020 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %ar, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg4020
  %_allocated_arg4022 = alloca i64
  store i64 %n, i64* %_allocated_arg4022
  store i64 0, i64* %_i4024
  br label %_entry4056
_entry4056:
  %_exp_of_id4026 = load i64, i64* %_i4024
  %_exp_of_id4027 = load i64, i64* %_allocated_arg4022
  %_exp_of_bop4028 = icmp slt i64 %_exp_of_id4026, %_exp_of_id4027
  br i1 %_exp_of_bop4028, label %_body4057, label %_exit4058
_body4057:
  store i64 0, i64* %_j4029
  br label %_entry4047
_entry4047:
  %_exp_of_id4031 = load i64, i64* %_j4029
  %_exp_of_bop4032 = icmp slt i64 %_exp_of_id4031, 4
  br i1 %_exp_of_bop4032, label %_body4048, label %_exit4049
_body4048:
  %_exp_of_id4038 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg4020
  %_exp_of_id4039 = load i64, i64* %_i4024
  %_id_of_index4036 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id4038, i32 0, i32 1, i64 %_exp_of_id4039
  %_id_of_load4037 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index4036
  %_exp_of_id4040 = load i64, i64* %_j4029
  %_id_of_index4034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load4037, i32 0, i32 1, i64 %_exp_of_id4040
  %_id_of_load4035 = load i64, i64* %_id_of_index4034
  call void @print_int(i64 %_id_of_load4035)
  %_exp_of_bit4043 = bitcast [2 x i8]* @_exp_of_string4042 to i8*
  call void @print_string(i8* %_exp_of_bit4043)
  %_exp_of_id4044 = load i64, i64* %_j4029
  %_exp_of_bop4045 = add i64 %_exp_of_id4044, 1
  store i64 %_exp_of_bop4045, i64* %_j4029
  br label %_entry4047
_exit4049:
  %_exp_of_bit4052 = bitcast [2 x i8]* @_exp_of_string4051 to i8*
  call void @print_string(i8* %_exp_of_bit4052)
  %_exp_of_id4053 = load i64, i64* %_i4024
  %_exp_of_bop4054 = add i64 %_exp_of_id4053, 1
  store i64 %_exp_of_bop4054, i64* %_i4024
  br label %_entry4056
_exit4058:
  ret void
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

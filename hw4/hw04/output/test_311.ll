; generated from: hw4programs/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@_const_of_global5361 = global i64 5
@lfsr_length = global i64 4
@_const_of_global5360 = global i64 4
@lfsr_init_values = global { i64, [0 x i1] }* bitcast ({ i64, [4 x i1] }* @_const_of_global5355 to { i64, [0 x i1] }*)
@_const_of_global5356 = global i1 1
@_const_of_global5357 = global i1 0
@_const_of_global5358 = global i1 1
@_const_of_global5359 = global i1 0
@_const_of_global5355 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_exp_of_string5335 = global [2 x i8] c"T\00"
@_exp_of_string5337 = global [2 x i8] c"F\00"
@_exp_of_string5306 = global [2 x i8] c" \00"

define i1 @xor(i1 %x, i1 %y) {
  %_allocated_arg5342 = alloca i1
  store i1 %x, i1* %_allocated_arg5342
  %_allocated_arg5344 = alloca i1
  store i1 %y, i1* %_allocated_arg5344
  %_exp_of_id5346 = load i1, i1* %_allocated_arg5342
  %_exp_of_id5347 = load i1, i1* %_allocated_arg5344
  %_id_of_uop5348 = icmp eq i1 %_exp_of_id5347, 0
  %_exp_of_bop5349 = and i1 %_exp_of_id5346, %_id_of_uop5348
  %_exp_of_id5350 = load i1, i1* %_allocated_arg5342
  %_id_of_uop5351 = icmp eq i1 %_exp_of_id5350, 0
  %_exp_of_id5352 = load i1, i1* %_allocated_arg5344
  %_exp_of_bop5353 = and i1 %_id_of_uop5351, %_exp_of_id5352
  %_exp_of_bop5354 = or i1 %_exp_of_bop5349, %_exp_of_bop5353
  ret i1 %_exp_of_bop5354
}

define i8* @string_of_bool(i1 %b) {
  %_allocated_arg5332 = alloca i1
  store i1 %b, i1* %_allocated_arg5332
  %_exp_of_id5334 = load i1, i1* %_allocated_arg5332
  br i1 %_exp_of_id5334, label %_branch_of_eq5340, label %_branch_of_neq5341
_branch_of_eq5340:
  %_exp_of_bit5336 = bitcast [2 x i8]* @_exp_of_string5335 to i8*
  ret i8* %_exp_of_bit5336
_branch_of_neq5341:
  %_exp_of_bit5338 = bitcast [2 x i8]* @_exp_of_string5337 to i8*
  ret i8* %_exp_of_bit5338
_merge5339:
  ret i8* null
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_i5315 = alloca i64
  %_allocated_arg5311 = alloca { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_allocated_arg5311
  %_allocated_arg5313 = alloca i64
  store i64 %len, i64* %_allocated_arg5313
  store i64 0, i64* %_i5315
  br label %_entry5329
_entry5329:
  %_exp_of_id5317 = load i64, i64* %_i5315
  %_exp_of_id5318 = load i64, i64* %_allocated_arg5313
  %_exp_of_bop5319 = icmp slt i64 %_exp_of_id5317, %_exp_of_id5318
  br i1 %_exp_of_bop5319, label %_body5330, label %_exit5331
_body5330:
  %_exp_of_id5324 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_allocated_arg5311
  %_exp_of_id5325 = load i64, i64* %_i5315
  %_id_of_index5322 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_exp_of_id5324, i32 0, i32 1, i64 %_exp_of_id5325
  %_id_of_load5323 = load i1, i1* %_id_of_index5322
  %_exp_of_call5321 = call i8* @string_of_bool(i1 %_id_of_load5323)
  call void @print_string(i8* %_exp_of_call5321)
  %_exp_of_id5326 = load i64, i64* %_i5315
  %_exp_of_bop5327 = add i64 %_exp_of_id5326, 1
  store i64 %_exp_of_bop5327, i64* %_i5315
  br label %_entry5329
_exit5331:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl5229 = alloca { i64, [0 x i1] }*
  %_i5234 = alloca i64
  %_i5253 = alloca i64
  %_id_of_decl5258 = alloca i1
  %_j5273 = alloca i64
  %_allocated_arg5225 = alloca i64
  store i64 %argc, i64* %_allocated_arg5225
  %_allocated_arg5227 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg5227
  %_exp_of_id5230 = load i64, i64* @lfsr_length
  %_raw_array5231 = call i64* @oat_alloc_array(i64 %_exp_of_id5230)
  %_array5232 = bitcast i64* %_raw_array5231 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array5232, { i64, [0 x i1] }** %_id_of_decl5229
  store i64 0, i64* %_i5234
  br label %_entry5250
_entry5250:
  %_exp_of_id5236 = load i64, i64* %_i5234
  %_exp_of_id5237 = load i64, i64* @lfsr_length
  %_exp_of_bop5238 = icmp slt i64 %_exp_of_id5236, %_exp_of_id5237
  br i1 %_exp_of_bop5238, label %_body5251, label %_exit5252
_body5251:
  %_exp_of_id5241 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_exp_of_id5242 = load i64, i64* %_i5234
  %_id_of_index5239 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_exp_of_id5241, i32 0, i32 1, i64 %_exp_of_id5242
  %_id_of_load5240 = load i1, i1* %_id_of_index5239
  %_exp_of_id5244 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_id_of_decl5229
  %_exp_of_id5245 = load i64, i64* %_i5234
  %_id_of_gep_exp5246 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_exp_of_id5244, i32 0, i32 1, i64 %_exp_of_id5245
  store i1 %_id_of_load5240, i1* %_id_of_gep_exp5246
  %_exp_of_id5247 = load i64, i64* %_i5234
  %_exp_of_bop5248 = add i64 %_exp_of_id5247, 1
  store i64 %_exp_of_bop5248, i64* %_i5234
  br label %_entry5250
_exit5252:
  store i64 0, i64* %_i5253
  br label %_entry5299
_entry5299:
  %_exp_of_id5255 = load i64, i64* %_i5253
  %_exp_of_id5256 = load i64, i64* @lfsr_iterations
  %_exp_of_bop5257 = icmp slt i64 %_exp_of_id5255, %_exp_of_id5256
  br i1 %_exp_of_bop5257, label %_body5300, label %_exit5301
_body5300:
  %_exp_of_id5262 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_id_of_decl5229
  %_exp_of_id5263 = load i64, i64* @lfsr_length
  %_exp_of_bop5264 = sub i64 %_exp_of_id5263, 1
  %_id_of_index5260 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_exp_of_id5262, i32 0, i32 1, i64 %_exp_of_bop5264
  %_id_of_load5261 = load i1, i1* %_id_of_index5260
  %_exp_of_id5267 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_id_of_decl5229
  %_exp_of_id5268 = load i64, i64* @lfsr_length
  %_exp_of_bop5269 = sub i64 %_exp_of_id5268, 2
  %_id_of_index5265 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_exp_of_id5267, i32 0, i32 1, i64 %_exp_of_bop5269
  %_id_of_load5266 = load i1, i1* %_id_of_index5265
  %_exp_of_call5259 = call i1 @xor(i1 %_id_of_load5261, i1 %_id_of_load5266)
  store i1 %_exp_of_call5259, i1* %_id_of_decl5258
  %_exp_of_id5271 = load i64, i64* @lfsr_length
  %_exp_of_bop5272 = sub i64 %_exp_of_id5271, 1
  store i64 %_exp_of_bop5272, i64* %_j5273
  br label %_entry5289
_entry5289:
  %_exp_of_id5275 = load i64, i64* %_j5273
  %_exp_of_bop5276 = icmp sgt i64 %_exp_of_id5275, 0
  br i1 %_exp_of_bop5276, label %_body5290, label %_exit5291
_body5290:
  %_exp_of_id5279 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_id_of_decl5229
  %_exp_of_id5280 = load i64, i64* %_j5273
  %_exp_of_bop5281 = sub i64 %_exp_of_id5280, 1
  %_id_of_index5277 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_exp_of_id5279, i32 0, i32 1, i64 %_exp_of_bop5281
  %_id_of_load5278 = load i1, i1* %_id_of_index5277
  %_exp_of_id5283 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_id_of_decl5229
  %_exp_of_id5284 = load i64, i64* %_j5273
  %_id_of_gep_exp5285 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_exp_of_id5283, i32 0, i32 1, i64 %_exp_of_id5284
  store i1 %_id_of_load5278, i1* %_id_of_gep_exp5285
  %_exp_of_id5286 = load i64, i64* %_j5273
  %_exp_of_bop5287 = sub i64 %_exp_of_id5286, 1
  store i64 %_exp_of_bop5287, i64* %_j5273
  br label %_entry5289
_exit5291:
  %_exp_of_id5292 = load i1, i1* %_id_of_decl5258
  %_exp_of_id5294 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_id_of_decl5229
  %_id_of_gep_exp5295 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_exp_of_id5294, i32 0, i32 1, i32 0
  store i1 %_exp_of_id5292, i1* %_id_of_gep_exp5295
  %_exp_of_id5296 = load i64, i64* %_i5253
  %_exp_of_bop5297 = add i64 %_exp_of_id5296, 1
  store i64 %_exp_of_bop5297, i64* %_i5253
  br label %_entry5299
_exit5301:
  %_exp_of_id5303 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_exp_of_id5304 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_exp_of_id5303, i64 %_exp_of_id5304)
  %_exp_of_bit5307 = bitcast [2 x i8]* @_exp_of_string5306 to i8*
  call void @print_string(i8* %_exp_of_bit5307)
  %_exp_of_id5309 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_id_of_decl5229
  %_exp_of_id5310 = load i64, i64* @lfsr_length
  call void @print_lfsr({ i64, [0 x i1] }* %_exp_of_id5309, i64 %_exp_of_id5310)
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

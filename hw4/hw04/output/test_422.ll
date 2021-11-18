; generated from: hw4programs/binary_search.oat
target triple = "x86_64-unknown-linux"
@_exp_of_string4352 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_id_of_decl4421 = alloca i64
  %_id_of_decl4423 = alloca i64
  %_allocated_arg4407 = alloca i64
  store i64 %numerator, i64* %_allocated_arg4407
  %_allocated_arg4409 = alloca i64
  store i64 %denominator, i64* %_allocated_arg4409
  %_exp_of_id4411 = load i64, i64* %_allocated_arg4409
  %_exp_of_bop4412 = icmp slt i64 %_exp_of_id4411, 0
  br i1 %_exp_of_bop4412, label %_branch_of_eq4419, label %_branch_of_neq4420
_branch_of_eq4419:
  %_exp_of_id4414 = load i64, i64* %_allocated_arg4407
  %_exp_of_id4415 = load i64, i64* %_allocated_arg4409
  %_id_of_uop4416 = sub i64 0, %_exp_of_id4415
  %_exp_of_call4413 = call i64 @euclid_division(i64 %_exp_of_id4414, i64 %_id_of_uop4416)
  %_id_of_uop4417 = sub i64 0, %_exp_of_call4413
  ret i64 %_id_of_uop4417
_branch_of_neq4420:
  br label %_merge4418
_merge4418:
  store i64 0, i64* %_id_of_decl4421
  %_exp_of_id4424 = load i64, i64* %_allocated_arg4407
  store i64 %_exp_of_id4424, i64* %_id_of_decl4423
  %_exp_of_id4426 = load i64, i64* %_allocated_arg4407
  %_exp_of_bop4427 = icmp slt i64 %_exp_of_id4426, 0
  br i1 %_exp_of_bop4427, label %_branch_of_eq4455, label %_branch_of_neq4456
_branch_of_eq4455:
  %_exp_of_id4428 = load i64, i64* %_allocated_arg4407
  %_id_of_uop4429 = sub i64 0, %_exp_of_id4428
  store i64 %_id_of_uop4429, i64* %_id_of_decl4423
  br label %_entry4441
_entry4441:
  %_exp_of_id4431 = load i64, i64* %_id_of_decl4423
  %_exp_of_id4432 = load i64, i64* %_allocated_arg4409
  %_exp_of_bop4433 = icmp sge i64 %_exp_of_id4431, %_exp_of_id4432
  br i1 %_exp_of_bop4433, label %_body4442, label %_exit4443
_body4442:
  %_exp_of_id4434 = load i64, i64* %_id_of_decl4421
  %_exp_of_bop4435 = add i64 %_exp_of_id4434, 1
  store i64 %_exp_of_bop4435, i64* %_id_of_decl4421
  %_exp_of_id4437 = load i64, i64* %_id_of_decl4423
  %_exp_of_id4438 = load i64, i64* %_allocated_arg4409
  %_exp_of_bop4439 = sub i64 %_exp_of_id4437, %_exp_of_id4438
  store i64 %_exp_of_bop4439, i64* %_id_of_decl4423
  br label %_entry4441
_exit4443:
  %_exp_of_id4444 = load i64, i64* %_id_of_decl4423
  %_exp_of_bop4445 = icmp eq i64 %_exp_of_id4444, 0
  br i1 %_exp_of_bop4445, label %_branch_of_eq4452, label %_branch_of_neq4453
_branch_of_eq4452:
  %_exp_of_id4446 = load i64, i64* %_id_of_decl4421
  %_id_of_uop4447 = sub i64 0, %_exp_of_id4446
  ret i64 %_id_of_uop4447
_branch_of_neq4453:
  %_exp_of_id4448 = load i64, i64* %_id_of_decl4421
  %_id_of_uop4449 = sub i64 0, %_exp_of_id4448
  %_exp_of_bop4450 = sub i64 %_id_of_uop4449, 1
  ret i64 %_exp_of_bop4450
_merge4451:
  br label %_merge4454
_branch_of_neq4456:
  br label %_merge4454
_merge4454:
  br label %_entry4467
_entry4467:
  %_exp_of_id4457 = load i64, i64* %_id_of_decl4423
  %_exp_of_id4458 = load i64, i64* %_allocated_arg4409
  %_exp_of_bop4459 = icmp sge i64 %_exp_of_id4457, %_exp_of_id4458
  br i1 %_exp_of_bop4459, label %_body4468, label %_exit4469
_body4468:
  %_exp_of_id4460 = load i64, i64* %_id_of_decl4421
  %_exp_of_bop4461 = add i64 %_exp_of_id4460, 1
  store i64 %_exp_of_bop4461, i64* %_id_of_decl4421
  %_exp_of_id4463 = load i64, i64* %_id_of_decl4423
  %_exp_of_id4464 = load i64, i64* %_allocated_arg4409
  %_exp_of_bop4465 = sub i64 %_exp_of_id4463, %_exp_of_id4464
  store i64 %_exp_of_bop4465, i64* %_id_of_decl4423
  br label %_entry4467
_exit4469:
  %_exp_of_id4470 = load i64, i64* %_id_of_decl4421
  ret i64 %_exp_of_id4470
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_id_of_decl4371 = alloca i64
  %_allocated_arg4357 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_allocated_arg4357
  %_allocated_arg4359 = alloca i64
  store i64 %key, i64* %_allocated_arg4359
  %_allocated_arg4361 = alloca i64
  store i64 %min, i64* %_allocated_arg4361
  %_allocated_arg4363 = alloca i64
  store i64 %max, i64* %_allocated_arg4363
  %_exp_of_id4365 = load i64, i64* %_allocated_arg4363
  %_exp_of_id4366 = load i64, i64* %_allocated_arg4361
  %_exp_of_bop4367 = icmp slt i64 %_exp_of_id4365, %_exp_of_id4366
  br i1 %_exp_of_bop4367, label %_branch_of_eq4369, label %_branch_of_neq4370
_branch_of_eq4369:
  ret i1 0
_branch_of_neq4370:
  br label %_merge4368
_merge4368:
  %_exp_of_id4373 = load i64, i64* %_allocated_arg4363
  %_exp_of_id4374 = load i64, i64* %_allocated_arg4361
  %_exp_of_bop4375 = add i64 %_exp_of_id4373, %_exp_of_id4374
  %_exp_of_call4372 = call i64 @euclid_division(i64 %_exp_of_bop4375, i64 2)
  store i64 %_exp_of_call4372, i64* %_id_of_decl4371
  %_exp_of_id4379 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg4357
  %_exp_of_id4380 = load i64, i64* %_id_of_decl4371
  %_id_of_index4377 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4379, i32 0, i32 1, i64 %_exp_of_id4380
  %_id_of_load4378 = load i64, i64* %_id_of_index4377
  %_exp_of_id4381 = load i64, i64* %_allocated_arg4359
  %_exp_of_bop4382 = icmp sgt i64 %_id_of_load4378, %_exp_of_id4381
  br i1 %_exp_of_bop4382, label %_branch_of_eq4390, label %_branch_of_neq4391
_branch_of_eq4390:
  %_exp_of_id4384 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg4357
  %_exp_of_id4385 = load i64, i64* %_allocated_arg4359
  %_exp_of_id4386 = load i64, i64* %_allocated_arg4361
  %_exp_of_id4387 = load i64, i64* %_id_of_decl4371
  %_exp_of_bop4388 = sub i64 %_exp_of_id4387, 1
  %_exp_of_call4383 = call i1 @binary_search({ i64, [0 x i64] }* %_exp_of_id4384, i64 %_exp_of_id4385, i64 %_exp_of_id4386, i64 %_exp_of_bop4388)
  ret i1 %_exp_of_call4383
_branch_of_neq4391:
  br label %_merge4389
_merge4389:
  %_exp_of_id4394 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg4357
  %_exp_of_id4395 = load i64, i64* %_id_of_decl4371
  %_id_of_index4392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4394, i32 0, i32 1, i64 %_exp_of_id4395
  %_id_of_load4393 = load i64, i64* %_id_of_index4392
  %_exp_of_id4396 = load i64, i64* %_allocated_arg4359
  %_exp_of_bop4397 = icmp slt i64 %_id_of_load4393, %_exp_of_id4396
  br i1 %_exp_of_bop4397, label %_branch_of_eq4405, label %_branch_of_neq4406
_branch_of_eq4405:
  %_exp_of_id4399 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg4357
  %_exp_of_id4400 = load i64, i64* %_allocated_arg4359
  %_exp_of_id4401 = load i64, i64* %_id_of_decl4371
  %_exp_of_bop4402 = add i64 %_exp_of_id4401, 1
  %_exp_of_id4403 = load i64, i64* %_allocated_arg4363
  %_exp_of_call4398 = call i1 @binary_search({ i64, [0 x i64] }* %_exp_of_id4399, i64 %_exp_of_id4400, i64 %_exp_of_bop4402, i64 %_exp_of_id4403)
  ret i1 %_exp_of_call4398
_branch_of_neq4406:
  ret i1 1
_merge4404:
  ret i1 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl4314 = alloca { i64, [0 x i64] }*
  %_i4318 = alloca i64
  %_id_of_decl4335 = alloca i1
  %_id_of_decl4339 = alloca i1
  %_allocated_arg4310 = alloca i64
  store i64 %argc, i64* %_allocated_arg4310
  %_allocated_arg4312 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg4312
  %_raw_array4315 = call i64* @oat_alloc_array(i64 100)
  %_array4316 = bitcast i64* %_raw_array4315 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4316, { i64, [0 x i64] }** %_id_of_decl4314
  store i64 0, i64* %_i4318
  br label %_entry4332
_entry4332:
  %_exp_of_id4320 = load i64, i64* %_i4318
  %_exp_of_bop4321 = icmp slt i64 %_exp_of_id4320, 100
  br i1 %_exp_of_bop4321, label %_body4333, label %_exit4334
_body4333:
  %_exp_of_id4322 = load i64, i64* %_i4318
  %_exp_of_bop4323 = mul i64 2, %_exp_of_id4322
  %_exp_of_bop4324 = add i64 %_exp_of_bop4323, 1
  %_exp_of_id4326 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl4314
  %_exp_of_id4327 = load i64, i64* %_i4318
  %_id_of_gep_exp4328 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id4326, i32 0, i32 1, i64 %_exp_of_id4327
  store i64 %_exp_of_bop4324, i64* %_id_of_gep_exp4328
  %_exp_of_id4329 = load i64, i64* %_i4318
  %_exp_of_bop4330 = add i64 %_exp_of_id4329, 1
  store i64 %_exp_of_bop4330, i64* %_i4318
  br label %_entry4332
_exit4334:
  %_exp_of_id4337 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl4314
  %_exp_of_call4336 = call i1 @binary_search({ i64, [0 x i64] }* %_exp_of_id4337, i64 80, i64 0, i64 99)
  store i1 %_exp_of_call4336, i1* %_id_of_decl4335
  %_exp_of_id4341 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl4314
  %_exp_of_call4340 = call i1 @binary_search({ i64, [0 x i64] }* %_exp_of_id4341, i64 81, i64 0, i64 99)
  store i1 %_exp_of_call4340, i1* %_id_of_decl4339
  %_exp_of_id4343 = load i1, i1* %_id_of_decl4335
  %_exp_of_id4344 = load i1, i1* %_id_of_decl4339
  %_exp_of_bop4345 = and i1 %_exp_of_id4343, %_exp_of_id4344
  %_id_of_uop4346 = icmp eq i1 %_exp_of_bop4345, 0
  %_exp_of_id4347 = load i1, i1* %_id_of_decl4335
  %_exp_of_id4348 = load i1, i1* %_id_of_decl4339
  %_exp_of_bop4349 = or i1 %_exp_of_id4347, %_exp_of_id4348
  %_exp_of_bop4350 = and i1 %_id_of_uop4346, %_exp_of_bop4349
  br i1 %_exp_of_bop4350, label %_branch_of_eq4355, label %_branch_of_neq4356
_branch_of_eq4355:
  %_exp_of_bit4353 = bitcast [9 x i8]* @_exp_of_string4352 to i8*
  call void @print_string(i8* %_exp_of_bit4353)
  br label %_merge4354
_branch_of_neq4356:
  br label %_merge4354
_merge4354:
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

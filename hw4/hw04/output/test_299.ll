; generated from: hw4programs/bsort.oat
target triple = "x86_64-unknown-linux"
@_exp_of_string3399 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_id_of_decl3411 = alloca i64
  %_id_of_decl3413 = alloca i64
  %_j3419 = alloca i64
  %_allocated_arg3407 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_allocated_arg3407
  %_allocated_arg3409 = alloca i64
  store i64 %array_size, i64* %_allocated_arg3409
  store i64 0, i64* %_id_of_decl3411
  %_exp_of_id3414 = load i64, i64* %_allocated_arg3409
  %_exp_of_bop3415 = sub i64 %_exp_of_id3414, 1
  store i64 %_exp_of_bop3415, i64* %_id_of_decl3413
  br label %_entry3466
_entry3466:
  %_exp_of_id3417 = load i64, i64* %_id_of_decl3413
  %_exp_of_bop3418 = icmp sgt i64 %_exp_of_id3417, 0
  br i1 %_exp_of_bop3418, label %_body3467, label %_exit3468
_body3467:
  store i64 1, i64* %_j3419
  br label %_entry3460
_entry3460:
  %_exp_of_id3421 = load i64, i64* %_j3419
  %_exp_of_id3422 = load i64, i64* %_id_of_decl3413
  %_exp_of_bop3423 = icmp sle i64 %_exp_of_id3421, %_exp_of_id3422
  br i1 %_exp_of_bop3423, label %_body3461, label %_exit3462
_body3461:
  %_exp_of_id3426 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3407
  %_exp_of_id3427 = load i64, i64* %_j3419
  %_exp_of_bop3428 = sub i64 %_exp_of_id3427, 1
  %_id_of_index3424 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3426, i32 0, i32 1, i64 %_exp_of_bop3428
  %_id_of_load3425 = load i64, i64* %_id_of_index3424
  %_exp_of_id3431 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3407
  %_exp_of_id3432 = load i64, i64* %_id_of_decl3413
  %_id_of_index3429 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3431, i32 0, i32 1, i64 %_exp_of_id3432
  %_id_of_load3430 = load i64, i64* %_id_of_index3429
  %_exp_of_bop3433 = icmp sgt i64 %_id_of_load3425, %_id_of_load3430
  br i1 %_exp_of_bop3433, label %_branch_of_eq3455, label %_branch_of_neq3456
_branch_of_eq3455:
  %_exp_of_id3436 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3407
  %_exp_of_id3437 = load i64, i64* %_j3419
  %_exp_of_bop3438 = sub i64 %_exp_of_id3437, 1
  %_id_of_index3434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3436, i32 0, i32 1, i64 %_exp_of_bop3438
  %_id_of_load3435 = load i64, i64* %_id_of_index3434
  store i64 %_id_of_load3435, i64* %_id_of_decl3411
  %_exp_of_id3442 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3407
  %_exp_of_id3443 = load i64, i64* %_id_of_decl3413
  %_id_of_index3440 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3442, i32 0, i32 1, i64 %_exp_of_id3443
  %_id_of_load3441 = load i64, i64* %_id_of_index3440
  %_exp_of_id3445 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3407
  %_exp_of_id3446 = load i64, i64* %_j3419
  %_exp_of_bop3447 = sub i64 %_exp_of_id3446, 1
  %_id_of_gep_exp3448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3445, i32 0, i32 1, i64 %_exp_of_bop3447
  store i64 %_id_of_load3441, i64* %_id_of_gep_exp3448
  %_exp_of_id3449 = load i64, i64* %_id_of_decl3411
  %_exp_of_id3451 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3407
  %_exp_of_id3452 = load i64, i64* %_id_of_decl3413
  %_id_of_gep_exp3453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3451, i32 0, i32 1, i64 %_exp_of_id3452
  store i64 %_exp_of_id3449, i64* %_id_of_gep_exp3453
  br label %_merge3454
_branch_of_neq3456:
  br label %_merge3454
_merge3454:
  %_exp_of_id3457 = load i64, i64* %_j3419
  %_exp_of_bop3458 = add i64 %_exp_of_id3457, 1
  store i64 %_exp_of_bop3458, i64* %_j3419
  br label %_entry3460
_exit3462:
  %_exp_of_id3463 = load i64, i64* %_id_of_decl3413
  %_exp_of_bop3464 = sub i64 %_exp_of_id3463, 1
  store i64 %_exp_of_bop3464, i64* %_id_of_decl3413
  br label %_entry3466
_exit3468:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl3367 = alloca { i64, [0 x i64] }*
  %_allocated_arg3363 = alloca i64
  store i64 %argc, i64* %_allocated_arg3363
  %_allocated_arg3365 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg3365
  %_raw_array3368 = call i64* @oat_alloc_array(i64 8)
  %_array3369 = bitcast i64* %_raw_array3368 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3369, { i64, [0 x i64] }** %_id_of_decl3367
  %_exp_of_id3372 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3367
  %_id_of_gep_exp3373 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3372, i32 0, i32 1, i32 0
  store i64 121, i64* %_id_of_gep_exp3373
  %_exp_of_id3375 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3367
  %_id_of_gep_exp3376 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3375, i32 0, i32 1, i32 1
  store i64 125, i64* %_id_of_gep_exp3376
  %_exp_of_id3378 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3367
  %_id_of_gep_exp3379 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3378, i32 0, i32 1, i32 2
  store i64 120, i64* %_id_of_gep_exp3379
  %_exp_of_id3381 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3367
  %_id_of_gep_exp3382 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3381, i32 0, i32 1, i32 3
  store i64 111, i64* %_id_of_gep_exp3382
  %_exp_of_id3384 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3367
  %_id_of_gep_exp3385 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3384, i32 0, i32 1, i32 4
  store i64 116, i64* %_id_of_gep_exp3385
  %_exp_of_id3387 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3367
  %_id_of_gep_exp3388 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3387, i32 0, i32 1, i32 5
  store i64 110, i64* %_id_of_gep_exp3388
  %_exp_of_id3390 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3367
  %_id_of_gep_exp3391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3390, i32 0, i32 1, i32 6
  store i64 117, i64* %_id_of_gep_exp3391
  %_exp_of_id3393 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3367
  %_id_of_gep_exp3394 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3393, i32 0, i32 1, i32 7
  store i64 119, i64* %_id_of_gep_exp3394
  %_exp_of_id3397 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3367
  %_exp_of_call3396 = call i8* @string_of_array({ i64, [0 x i64] }* %_exp_of_id3397)
  call void @print_string(i8* %_exp_of_call3396)
  %_exp_of_bit3400 = bitcast [2 x i8]* @_exp_of_string3399 to i8*
  call void @print_string(i8* %_exp_of_bit3400)
  %_exp_of_id3402 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3367
  call void @bubble_sort({ i64, [0 x i64] }* %_exp_of_id3402, i64 8)
  %_exp_of_id3405 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3367
  %_exp_of_call3404 = call i8* @string_of_array({ i64, [0 x i64] }* %_exp_of_id3405)
  call void @print_string(i8* %_exp_of_call3404)
  %_id_of_uop3406 = sub i64 0, 1
  ret i64 %_id_of_uop3406
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

; generated from: hw4programs/gnomesort.oat
target triple = "x86_64-unknown-linux"
define void @gnomeSort({ i64, [0 x i64] }* %a, i64 %len) {
  %_id_of_decl5410 = alloca i64
  %_id_of_decl5412 = alloca i64
  %_id_of_decl5432 = alloca i64
  %_allocated_arg5406 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_allocated_arg5406
  %_allocated_arg5408 = alloca i64
  store i64 %len, i64* %_allocated_arg5408
  store i64 1, i64* %_id_of_decl5410
  store i64 2, i64* %_id_of_decl5412
  br label %_entry5469
_entry5469:
  %_exp_of_id5414 = load i64, i64* %_id_of_decl5410
  %_exp_of_id5415 = load i64, i64* %_allocated_arg5408
  %_exp_of_bop5416 = icmp slt i64 %_exp_of_id5414, %_exp_of_id5415
  br i1 %_exp_of_bop5416, label %_body5470, label %_exit5471
_body5470:
  %_exp_of_id5419 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg5406
  %_exp_of_id5420 = load i64, i64* %_id_of_decl5410
  %_exp_of_bop5421 = sub i64 %_exp_of_id5420, 1
  %_id_of_index5417 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5419, i32 0, i32 1, i64 %_exp_of_bop5421
  %_id_of_load5418 = load i64, i64* %_id_of_index5417
  %_exp_of_id5424 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg5406
  %_exp_of_id5425 = load i64, i64* %_id_of_decl5410
  %_id_of_index5422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5424, i32 0, i32 1, i64 %_exp_of_id5425
  %_id_of_load5423 = load i64, i64* %_id_of_index5422
  %_exp_of_bop5426 = icmp sle i64 %_id_of_load5418, %_id_of_load5423
  br i1 %_exp_of_bop5426, label %_branch_of_eq5467, label %_branch_of_neq5468
_branch_of_eq5467:
  %_exp_of_id5427 = load i64, i64* %_id_of_decl5412
  store i64 %_exp_of_id5427, i64* %_id_of_decl5410
  %_exp_of_id5429 = load i64, i64* %_id_of_decl5412
  %_exp_of_bop5430 = add i64 %_exp_of_id5429, 1
  store i64 %_exp_of_bop5430, i64* %_id_of_decl5412
  br label %_merge5466
_branch_of_neq5468:
  %_exp_of_id5435 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg5406
  %_exp_of_id5436 = load i64, i64* %_id_of_decl5410
  %_exp_of_bop5437 = sub i64 %_exp_of_id5436, 1
  %_id_of_index5433 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5435, i32 0, i32 1, i64 %_exp_of_bop5437
  %_id_of_load5434 = load i64, i64* %_id_of_index5433
  store i64 %_id_of_load5434, i64* %_id_of_decl5432
  %_exp_of_id5441 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg5406
  %_exp_of_id5442 = load i64, i64* %_id_of_decl5410
  %_id_of_index5439 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5441, i32 0, i32 1, i64 %_exp_of_id5442
  %_id_of_load5440 = load i64, i64* %_id_of_index5439
  %_exp_of_id5444 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg5406
  %_exp_of_id5445 = load i64, i64* %_id_of_decl5410
  %_exp_of_bop5446 = sub i64 %_exp_of_id5445, 1
  %_id_of_gep_exp5447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5444, i32 0, i32 1, i64 %_exp_of_bop5446
  store i64 %_id_of_load5440, i64* %_id_of_gep_exp5447
  %_exp_of_id5448 = load i64, i64* %_id_of_decl5432
  %_exp_of_id5450 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg5406
  %_exp_of_id5451 = load i64, i64* %_id_of_decl5410
  %_id_of_gep_exp5452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5450, i32 0, i32 1, i64 %_exp_of_id5451
  store i64 %_exp_of_id5448, i64* %_id_of_gep_exp5452
  %_exp_of_id5453 = load i64, i64* %_id_of_decl5410
  %_exp_of_bop5454 = sub i64 %_exp_of_id5453, 1
  store i64 %_exp_of_bop5454, i64* %_id_of_decl5410
  %_exp_of_id5456 = load i64, i64* %_id_of_decl5410
  %_exp_of_bop5457 = icmp eq i64 %_exp_of_id5456, 0
  br i1 %_exp_of_bop5457, label %_branch_of_eq5464, label %_branch_of_neq5465
_branch_of_eq5464:
  %_exp_of_id5458 = load i64, i64* %_id_of_decl5412
  store i64 %_exp_of_id5458, i64* %_id_of_decl5410
  %_exp_of_id5460 = load i64, i64* %_id_of_decl5412
  %_exp_of_bop5461 = add i64 %_exp_of_id5460, 1
  store i64 %_exp_of_bop5461, i64* %_id_of_decl5412
  br label %_merge5463
_branch_of_neq5465:
  br label %_merge5463
_merge5463:
  br label %_merge5466
_merge5466:
  br label %_entry5469
_exit5471:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl5366 = alloca { i64, [0 x i64] }*
  %_id_of_decl5386 = alloca i64
  %_i5391 = alloca i64
  %_allocated_arg5362 = alloca i64
  store i64 %argc, i64* %_allocated_arg5362
  %_allocated_arg5364 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg5364
  %_raw_array5367 = call i64* @oat_alloc_array(i64 8)
  %_array5368 = bitcast i64* %_raw_array5367 to { i64, [0 x i64] }*
  %_id_of_gep5369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5368, i32 0, i32 1, i32 0
  store i64 5, i64* %_id_of_gep5369
  %_id_of_gep5371 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5368, i32 0, i32 1, i32 1
  store i64 200, i64* %_id_of_gep5371
  %_id_of_gep5373 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5368, i32 0, i32 1, i32 2
  store i64 1, i64* %_id_of_gep5373
  %_id_of_gep5375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5368, i32 0, i32 1, i32 3
  store i64 65, i64* %_id_of_gep5375
  %_id_of_gep5377 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5368, i32 0, i32 1, i32 4
  store i64 30, i64* %_id_of_gep5377
  %_id_of_gep5379 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5368, i32 0, i32 1, i32 5
  store i64 99, i64* %_id_of_gep5379
  %_id_of_gep5381 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5368, i32 0, i32 1, i32 6
  store i64 2, i64* %_id_of_gep5381
  %_id_of_gep5383 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5368, i32 0, i32 1, i32 7
  store i64 0, i64* %_id_of_gep5383
  store { i64, [0 x i64] }* %_array5368, { i64, [0 x i64] }** %_id_of_decl5366
  store i64 8, i64* %_id_of_decl5386
  %_exp_of_id5389 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl5366
  %_exp_of_id5390 = load i64, i64* %_id_of_decl5386
  call void @gnomeSort({ i64, [0 x i64] }* %_exp_of_id5389, i64 %_exp_of_id5390)
  store i64 0, i64* %_i5391
  br label %_entry5403
_entry5403:
  %_exp_of_id5393 = load i64, i64* %_i5391
  %_exp_of_bop5394 = icmp slt i64 %_exp_of_id5393, 8
  br i1 %_exp_of_bop5394, label %_body5404, label %_exit5405
_body5404:
  %_exp_of_id5398 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl5366
  %_exp_of_id5399 = load i64, i64* %_i5391
  %_id_of_index5396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id5398, i32 0, i32 1, i64 %_exp_of_id5399
  %_id_of_load5397 = load i64, i64* %_id_of_index5396
  call void @print_int(i64 %_id_of_load5397)
  %_exp_of_id5400 = load i64, i64* %_i5391
  %_exp_of_bop5401 = add i64 %_exp_of_id5400, 1
  store i64 %_exp_of_bop5401, i64* %_i5391
  br label %_entry5403
_exit5405:
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

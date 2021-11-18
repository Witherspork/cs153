; generated from: hw4programs/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_id_of_decl5508 = alloca i64
  %_allocated_arg5502 = alloca i64
  store i64 %a, i64* %_allocated_arg5502
  %_allocated_arg5504 = alloca i64
  store i64 %b, i64* %_allocated_arg5504
  br label %_entry5517
_entry5517:
  %_exp_of_id5506 = load i64, i64* %_allocated_arg5504
  %_exp_of_bop5507 = icmp ne i64 %_exp_of_id5506, 0
  br i1 %_exp_of_bop5507, label %_body5518, label %_exit5519
_body5518:
  %_exp_of_id5509 = load i64, i64* %_allocated_arg5504
  store i64 %_exp_of_id5509, i64* %_id_of_decl5508
  %_exp_of_id5512 = load i64, i64* %_allocated_arg5502
  %_exp_of_id5513 = load i64, i64* %_allocated_arg5504
  %_exp_of_call5511 = call i64 @mod(i64 %_exp_of_id5512, i64 %_exp_of_id5513)
  store i64 %_exp_of_call5511, i64* %_allocated_arg5504
  %_exp_of_id5515 = load i64, i64* %_id_of_decl5508
  store i64 %_exp_of_id5515, i64* %_allocated_arg5502
  br label %_entry5517
_exit5519:
  %_exp_of_id5520 = load i64, i64* %_allocated_arg5502
  ret i64 %_exp_of_id5520
}

define i64 @mod(i64 %a, i64 %b) {
  %_id_of_decl5487 = alloca i64
  %_allocated_arg5483 = alloca i64
  store i64 %a, i64* %_allocated_arg5483
  %_allocated_arg5485 = alloca i64
  store i64 %b, i64* %_allocated_arg5485
  %_exp_of_id5488 = load i64, i64* %_allocated_arg5483
  store i64 %_exp_of_id5488, i64* %_id_of_decl5487
  br label %_entry5498
_entry5498:
  %_exp_of_id5490 = load i64, i64* %_id_of_decl5487
  %_exp_of_id5491 = load i64, i64* %_allocated_arg5485
  %_exp_of_bop5492 = sub i64 %_exp_of_id5490, %_exp_of_id5491
  %_exp_of_bop5493 = icmp sge i64 %_exp_of_bop5492, 0
  br i1 %_exp_of_bop5493, label %_body5499, label %_exit5500
_body5499:
  %_exp_of_id5494 = load i64, i64* %_id_of_decl5487
  %_exp_of_id5495 = load i64, i64* %_allocated_arg5485
  %_exp_of_bop5496 = sub i64 %_exp_of_id5494, %_exp_of_id5495
  store i64 %_exp_of_bop5496, i64* %_id_of_decl5487
  br label %_entry5498
_exit5500:
  %_exp_of_id5501 = load i64, i64* %_id_of_decl5487
  ret i64 %_exp_of_id5501
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl5476 = alloca i64
  %_id_of_decl5478 = alloca i64
  %_allocated_arg5472 = alloca i64
  store i64 %argc, i64* %_allocated_arg5472
  %_allocated_arg5474 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg5474
  store i64 64, i64* %_id_of_decl5476
  store i64 48, i64* %_id_of_decl5478
  %_exp_of_id5481 = load i64, i64* %_id_of_decl5476
  %_exp_of_id5482 = load i64, i64* %_id_of_decl5478
  %_exp_of_call5480 = call i64 @gcd(i64 %_exp_of_id5481, i64 %_exp_of_id5482)
  ret i64 %_exp_of_call5480
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

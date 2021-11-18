; generated from: hw4programs/msort.oat
target triple = "x86_64-unknown-linux"
@_exp_of_string3672 = global [2 x i8] c" \00"
@_exp_of_string3678 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl3640 = alloca i64
  %_id_of_decl3642 = alloca { i64, [0 x i64] }*
  %_allocated_arg3636 = alloca i64
  store i64 %argc, i64* %_allocated_arg3636
  %_allocated_arg3638 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg3638
  store i64 0, i64* %_id_of_decl3640
  %_raw_array3643 = call i64* @oat_alloc_array(i64 10)
  %_array3644 = bitcast i64* %_raw_array3643 to { i64, [0 x i64] }*
  %_id_of_gep3645 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3644, i32 0, i32 1, i32 0
  store i64 126, i64* %_id_of_gep3645
  %_id_of_gep3647 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3644, i32 0, i32 1, i32 1
  store i64 125, i64* %_id_of_gep3647
  %_id_of_gep3649 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3644, i32 0, i32 1, i32 2
  store i64 124, i64* %_id_of_gep3649
  %_id_of_gep3651 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3644, i32 0, i32 1, i32 3
  store i64 123, i64* %_id_of_gep3651
  %_id_of_gep3653 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3644, i32 0, i32 1, i32 4
  store i64 122, i64* %_id_of_gep3653
  %_id_of_gep3655 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3644, i32 0, i32 1, i32 5
  store i64 121, i64* %_id_of_gep3655
  %_id_of_gep3657 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3644, i32 0, i32 1, i32 6
  store i64 120, i64* %_id_of_gep3657
  %_id_of_gep3659 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3644, i32 0, i32 1, i32 7
  store i64 119, i64* %_id_of_gep3659
  %_id_of_gep3661 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3644, i32 0, i32 1, i32 8
  store i64 118, i64* %_id_of_gep3661
  %_id_of_gep3663 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3644, i32 0, i32 1, i32 9
  store i64 117, i64* %_id_of_gep3663
  store { i64, [0 x i64] }* %_array3644, { i64, [0 x i64] }** %_id_of_decl3642
  %_exp_of_id3668 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3642
  %_exp_of_call3667 = call i8* @string_of_array({ i64, [0 x i64] }* %_exp_of_id3668)
  call void @print_string(i8* %_exp_of_call3667)
  %_exp_of_id3670 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3642
  call void @oat_mergesort({ i64, [0 x i64] }* %_exp_of_id3670, i64 0, i64 9)
  %_exp_of_bit3673 = bitcast [2 x i8]* @_exp_of_string3672 to i8*
  call void @print_string(i8* %_exp_of_bit3673)
  %_exp_of_id3676 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3642
  %_exp_of_call3675 = call i8* @string_of_array({ i64, [0 x i64] }* %_exp_of_id3676)
  call void @print_string(i8* %_exp_of_call3675)
  %_exp_of_bit3679 = bitcast [2 x i8]* @_exp_of_string3678 to i8*
  call void @print_string(i8* %_exp_of_bit3679)
  %_exp_of_id3680 = load i64, i64* %_id_of_decl3640
  ret i64 %_exp_of_id3680
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_id_of_decl3609 = alloca i64
  %_allocated_arg3603 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_allocated_arg3603
  %_allocated_arg3605 = alloca i64
  store i64 %low, i64* %_allocated_arg3605
  %_allocated_arg3607 = alloca i64
  store i64 %high, i64* %_allocated_arg3607
  store i64 0, i64* %_id_of_decl3609
  %_exp_of_id3611 = load i64, i64* %_allocated_arg3605
  %_exp_of_id3612 = load i64, i64* %_allocated_arg3607
  %_exp_of_bop3613 = icmp slt i64 %_exp_of_id3611, %_exp_of_id3612
  br i1 %_exp_of_bop3613, label %_branch_of_eq3634, label %_branch_of_neq3635
_branch_of_eq3634:
  %_exp_of_id3614 = load i64, i64* %_allocated_arg3605
  %_exp_of_id3615 = load i64, i64* %_allocated_arg3607
  %_exp_of_bop3616 = add i64 %_exp_of_id3614, %_exp_of_id3615
  %_exp_of_bop3617 = lshr i64 %_exp_of_bop3616, 1
  store i64 %_exp_of_bop3617, i64* %_id_of_decl3609
  %_exp_of_id3620 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3603
  %_exp_of_id3621 = load i64, i64* %_allocated_arg3605
  %_exp_of_id3622 = load i64, i64* %_id_of_decl3609
  call void @oat_mergesort({ i64, [0 x i64] }* %_exp_of_id3620, i64 %_exp_of_id3621, i64 %_exp_of_id3622)
  %_exp_of_id3624 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3603
  %_exp_of_id3625 = load i64, i64* %_id_of_decl3609
  %_exp_of_bop3626 = add i64 %_exp_of_id3625, 1
  %_exp_of_id3627 = load i64, i64* %_allocated_arg3607
  call void @oat_mergesort({ i64, [0 x i64] }* %_exp_of_id3624, i64 %_exp_of_bop3626, i64 %_exp_of_id3627)
  %_exp_of_id3629 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3603
  %_exp_of_id3630 = load i64, i64* %_allocated_arg3605
  %_exp_of_id3631 = load i64, i64* %_allocated_arg3607
  %_exp_of_id3632 = load i64, i64* %_id_of_decl3609
  call void @merge({ i64, [0 x i64] }* %_exp_of_id3629, i64 %_exp_of_id3630, i64 %_exp_of_id3631, i64 %_exp_of_id3632)
  br label %_merge3633
_branch_of_neq3635:
  br label %_merge3633
_merge3633:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_id_of_decl3477 = alloca i64
  %_id_of_decl3479 = alloca i64
  %_id_of_decl3481 = alloca i64
  %_id_of_decl3483 = alloca { i64, [0 x i64] }*
  %_allocated_arg3469 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_allocated_arg3469
  %_allocated_arg3471 = alloca i64
  store i64 %low, i64* %_allocated_arg3471
  %_allocated_arg3473 = alloca i64
  store i64 %high, i64* %_allocated_arg3473
  %_allocated_arg3475 = alloca i64
  store i64 %mid, i64* %_allocated_arg3475
  store i64 0, i64* %_id_of_decl3477
  store i64 0, i64* %_id_of_decl3479
  store i64 0, i64* %_id_of_decl3481
  %_raw_array3484 = call i64* @oat_alloc_array(i64 50)
  %_array3485 = bitcast i64* %_raw_array3484 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3485, { i64, [0 x i64] }** %_id_of_decl3483
  %_exp_of_id3487 = load i64, i64* %_allocated_arg3471
  store i64 %_exp_of_id3487, i64* %_id_of_decl3477
  %_exp_of_id3489 = load i64, i64* %_allocated_arg3475
  %_exp_of_bop3490 = add i64 %_exp_of_id3489, 1
  store i64 %_exp_of_bop3490, i64* %_id_of_decl3479
  %_exp_of_id3492 = load i64, i64* %_allocated_arg3471
  store i64 %_exp_of_id3492, i64* %_id_of_decl3481
  br label %_entry3541
_entry3541:
  %_exp_of_id3494 = load i64, i64* %_id_of_decl3477
  %_exp_of_id3495 = load i64, i64* %_allocated_arg3475
  %_exp_of_bop3496 = icmp sle i64 %_exp_of_id3494, %_exp_of_id3495
  %_exp_of_id3497 = load i64, i64* %_id_of_decl3479
  %_exp_of_id3498 = load i64, i64* %_allocated_arg3473
  %_exp_of_bop3499 = icmp sle i64 %_exp_of_id3497, %_exp_of_id3498
  %_exp_of_bop3500 = and i1 %_exp_of_bop3496, %_exp_of_bop3499
  br i1 %_exp_of_bop3500, label %_body3542, label %_exit3543
_body3542:
  %_exp_of_id3503 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3469
  %_exp_of_id3504 = load i64, i64* %_id_of_decl3477
  %_id_of_index3501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3503, i32 0, i32 1, i64 %_exp_of_id3504
  %_id_of_load3502 = load i64, i64* %_id_of_index3501
  %_exp_of_id3507 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3469
  %_exp_of_id3508 = load i64, i64* %_id_of_decl3479
  %_id_of_index3505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3507, i32 0, i32 1, i64 %_exp_of_id3508
  %_id_of_load3506 = load i64, i64* %_id_of_index3505
  %_exp_of_bop3509 = icmp slt i64 %_id_of_load3502, %_id_of_load3506
  br i1 %_exp_of_bop3509, label %_branch_of_eq3539, label %_branch_of_neq3540
_branch_of_eq3539:
  %_exp_of_id3512 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3469
  %_exp_of_id3513 = load i64, i64* %_id_of_decl3477
  %_id_of_index3510 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3512, i32 0, i32 1, i64 %_exp_of_id3513
  %_id_of_load3511 = load i64, i64* %_id_of_index3510
  %_exp_of_id3515 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3483
  %_exp_of_id3516 = load i64, i64* %_id_of_decl3481
  %_id_of_gep_exp3517 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3515, i32 0, i32 1, i64 %_exp_of_id3516
  store i64 %_id_of_load3511, i64* %_id_of_gep_exp3517
  %_exp_of_id3518 = load i64, i64* %_id_of_decl3481
  %_exp_of_bop3519 = add i64 %_exp_of_id3518, 1
  store i64 %_exp_of_bop3519, i64* %_id_of_decl3481
  %_exp_of_id3521 = load i64, i64* %_id_of_decl3477
  %_exp_of_bop3522 = add i64 %_exp_of_id3521, 1
  store i64 %_exp_of_bop3522, i64* %_id_of_decl3477
  br label %_merge3538
_branch_of_neq3540:
  %_exp_of_id3526 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3469
  %_exp_of_id3527 = load i64, i64* %_id_of_decl3479
  %_id_of_index3524 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3526, i32 0, i32 1, i64 %_exp_of_id3527
  %_id_of_load3525 = load i64, i64* %_id_of_index3524
  %_exp_of_id3529 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3483
  %_exp_of_id3530 = load i64, i64* %_id_of_decl3481
  %_id_of_gep_exp3531 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3529, i32 0, i32 1, i64 %_exp_of_id3530
  store i64 %_id_of_load3525, i64* %_id_of_gep_exp3531
  %_exp_of_id3532 = load i64, i64* %_id_of_decl3481
  %_exp_of_bop3533 = add i64 %_exp_of_id3532, 1
  store i64 %_exp_of_bop3533, i64* %_id_of_decl3481
  %_exp_of_id3535 = load i64, i64* %_id_of_decl3479
  %_exp_of_bop3536 = add i64 %_exp_of_id3535, 1
  store i64 %_exp_of_bop3536, i64* %_id_of_decl3479
  br label %_merge3538
_merge3538:
  br label %_entry3541
_exit3543:
  br label %_entry3561
_entry3561:
  %_exp_of_id3544 = load i64, i64* %_id_of_decl3477
  %_exp_of_id3545 = load i64, i64* %_allocated_arg3475
  %_exp_of_bop3546 = icmp sle i64 %_exp_of_id3544, %_exp_of_id3545
  br i1 %_exp_of_bop3546, label %_body3562, label %_exit3563
_body3562:
  %_exp_of_id3549 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3469
  %_exp_of_id3550 = load i64, i64* %_id_of_decl3477
  %_id_of_index3547 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3549, i32 0, i32 1, i64 %_exp_of_id3550
  %_id_of_load3548 = load i64, i64* %_id_of_index3547
  %_exp_of_id3552 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3483
  %_exp_of_id3553 = load i64, i64* %_id_of_decl3481
  %_id_of_gep_exp3554 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3552, i32 0, i32 1, i64 %_exp_of_id3553
  store i64 %_id_of_load3548, i64* %_id_of_gep_exp3554
  %_exp_of_id3555 = load i64, i64* %_id_of_decl3481
  %_exp_of_bop3556 = add i64 %_exp_of_id3555, 1
  store i64 %_exp_of_bop3556, i64* %_id_of_decl3481
  %_exp_of_id3558 = load i64, i64* %_id_of_decl3477
  %_exp_of_bop3559 = add i64 %_exp_of_id3558, 1
  store i64 %_exp_of_bop3559, i64* %_id_of_decl3477
  br label %_entry3561
_exit3563:
  br label %_entry3581
_entry3581:
  %_exp_of_id3564 = load i64, i64* %_id_of_decl3479
  %_exp_of_id3565 = load i64, i64* %_allocated_arg3473
  %_exp_of_bop3566 = icmp sle i64 %_exp_of_id3564, %_exp_of_id3565
  br i1 %_exp_of_bop3566, label %_body3582, label %_exit3583
_body3582:
  %_exp_of_id3569 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3469
  %_exp_of_id3570 = load i64, i64* %_id_of_decl3479
  %_id_of_index3567 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3569, i32 0, i32 1, i64 %_exp_of_id3570
  %_id_of_load3568 = load i64, i64* %_id_of_index3567
  %_exp_of_id3572 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3483
  %_exp_of_id3573 = load i64, i64* %_id_of_decl3481
  %_id_of_gep_exp3574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3572, i32 0, i32 1, i64 %_exp_of_id3573
  store i64 %_id_of_load3568, i64* %_id_of_gep_exp3574
  %_exp_of_id3575 = load i64, i64* %_id_of_decl3481
  %_exp_of_bop3576 = add i64 %_exp_of_id3575, 1
  store i64 %_exp_of_bop3576, i64* %_id_of_decl3481
  %_exp_of_id3578 = load i64, i64* %_id_of_decl3479
  %_exp_of_bop3579 = add i64 %_exp_of_id3578, 1
  store i64 %_exp_of_bop3579, i64* %_id_of_decl3479
  br label %_entry3581
_exit3583:
  %_exp_of_id3584 = load i64, i64* %_allocated_arg3471
  store i64 %_exp_of_id3584, i64* %_id_of_decl3477
  br label %_entry3600
_entry3600:
  %_exp_of_id3586 = load i64, i64* %_id_of_decl3477
  %_exp_of_id3587 = load i64, i64* %_id_of_decl3481
  %_exp_of_bop3588 = icmp slt i64 %_exp_of_id3586, %_exp_of_id3587
  br i1 %_exp_of_bop3588, label %_body3601, label %_exit3602
_body3601:
  %_exp_of_id3591 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl3483
  %_exp_of_id3592 = load i64, i64* %_id_of_decl3477
  %_id_of_index3589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3591, i32 0, i32 1, i64 %_exp_of_id3592
  %_id_of_load3590 = load i64, i64* %_id_of_index3589
  %_exp_of_id3594 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg3469
  %_exp_of_id3595 = load i64, i64* %_id_of_decl3477
  %_id_of_gep_exp3596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id3594, i32 0, i32 1, i64 %_exp_of_id3595
  store i64 %_id_of_load3590, i64* %_id_of_gep_exp3596
  %_exp_of_id3597 = load i64, i64* %_id_of_decl3477
  %_exp_of_bop3598 = add i64 %_exp_of_id3597, 1
  store i64 %_exp_of_bop3598, i64* %_id_of_decl3477
  br label %_entry3600
_exit3602:
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

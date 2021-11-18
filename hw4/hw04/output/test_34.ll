; generated from: hw4programs/run34.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl643 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_id_of_decl683 = alloca i64
  %_i685 = alloca i64
  %_j689 = alloca i64
  %_allocated_arg639 = alloca i64
  store i64 %argc, i64* %_allocated_arg639
  %_allocated_arg641 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg641
  %_raw_array644 = call i64* @oat_alloc_array(i64 3)
  %_array645 = bitcast i64* %_raw_array644 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array646 = call i64* @oat_alloc_array(i64 4)
  %_array647 = bitcast i64* %_raw_array646 to { i64, [0 x i64] }*
  %_id_of_gep648 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array647, i32 0, i32 1, i32 0
  store i64 0, i64* %_id_of_gep648
  %_id_of_gep650 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array647, i32 0, i32 1, i32 1
  store i64 1, i64* %_id_of_gep650
  %_id_of_gep652 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array647, i32 0, i32 1, i32 2
  store i64 2, i64* %_id_of_gep652
  %_id_of_gep654 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array647, i32 0, i32 1, i32 3
  store i64 3, i64* %_id_of_gep654
  %_raw_array656 = call i64* @oat_alloc_array(i64 4)
  %_array657 = bitcast i64* %_raw_array656 to { i64, [0 x i64] }*
  %_id_of_gep658 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array657, i32 0, i32 1, i32 0
  store i64 4, i64* %_id_of_gep658
  %_id_of_gep660 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array657, i32 0, i32 1, i32 1
  store i64 5, i64* %_id_of_gep660
  %_id_of_gep662 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array657, i32 0, i32 1, i32 2
  store i64 6, i64* %_id_of_gep662
  %_id_of_gep664 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array657, i32 0, i32 1, i32 3
  store i64 7, i64* %_id_of_gep664
  %_raw_array666 = call i64* @oat_alloc_array(i64 4)
  %_array667 = bitcast i64* %_raw_array666 to { i64, [0 x i64] }*
  %_id_of_gep668 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array667, i32 0, i32 1, i32 0
  store i64 8, i64* %_id_of_gep668
  %_id_of_gep670 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array667, i32 0, i32 1, i32 1
  store i64 9, i64* %_id_of_gep670
  %_id_of_gep672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array667, i32 0, i32 1, i32 2
  store i64 10, i64* %_id_of_gep672
  %_id_of_gep674 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array667, i32 0, i32 1, i32 3
  store i64 11, i64* %_id_of_gep674
  %_id_of_gep676 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array645, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array647, { i64, [0 x i64] }** %_id_of_gep676
  %_id_of_gep678 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array645, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array657, { i64, [0 x i64] }** %_id_of_gep678
  %_id_of_gep680 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array645, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array667, { i64, [0 x i64] }** %_id_of_gep680
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array645, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl643
  store i64 0, i64* %_id_of_decl683
  store i64 0, i64* %_i685
  br label %_entry712
_entry712:
  %_exp_of_id687 = load i64, i64* %_i685
  %_exp_of_bop688 = icmp slt i64 %_exp_of_id687, 3
  br i1 %_exp_of_bop688, label %_body713, label %_exit714
_body713:
  store i64 0, i64* %_j689
  br label %_entry706
_entry706:
  %_exp_of_id691 = load i64, i64* %_j689
  %_exp_of_bop692 = icmp slt i64 %_exp_of_id691, 4
  br i1 %_exp_of_bop692, label %_body707, label %_exit708
_body707:
  %_exp_of_id693 = load i64, i64* %_id_of_decl683
  %_exp_of_id698 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl643
  %_exp_of_id699 = load i64, i64* %_i685
  %_id_of_index696 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id698, i32 0, i32 1, i64 %_exp_of_id699
  %_id_of_load697 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index696
  %_exp_of_id700 = load i64, i64* %_j689
  %_id_of_index694 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load697, i32 0, i32 1, i64 %_exp_of_id700
  %_id_of_load695 = load i64, i64* %_id_of_index694
  %_exp_of_bop701 = add i64 %_exp_of_id693, %_id_of_load695
  store i64 %_exp_of_bop701, i64* %_id_of_decl683
  %_exp_of_id703 = load i64, i64* %_j689
  %_exp_of_bop704 = add i64 %_exp_of_id703, 1
  store i64 %_exp_of_bop704, i64* %_j689
  br label %_entry706
_exit708:
  %_exp_of_id709 = load i64, i64* %_i685
  %_exp_of_bop710 = add i64 %_exp_of_id709, 1
  store i64 %_exp_of_bop710, i64* %_i685
  br label %_entry712
_exit714:
  %_exp_of_id715 = load i64, i64* %_id_of_decl683
  ret i64 %_exp_of_id715
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

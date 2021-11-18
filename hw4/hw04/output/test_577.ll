; generated from: hw4programs/run35.oat
target triple = "x86_64-unknown-linux"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null
@_const_of_global793 = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl760 = alloca i64
  %_i762 = alloca i64
  %_j766 = alloca i64
  %_allocated_arg717 = alloca i64
  store i64 %argc, i64* %_allocated_arg717
  %_allocated_arg719 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg719
  %_raw_array721 = call i64* @oat_alloc_array(i64 3)
  %_array722 = bitcast i64* %_raw_array721 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array723 = call i64* @oat_alloc_array(i64 4)
  %_array724 = bitcast i64* %_raw_array723 to { i64, [0 x i64] }*
  %_id_of_gep725 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array724, i32 0, i32 1, i32 0
  store i64 0, i64* %_id_of_gep725
  %_id_of_gep727 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array724, i32 0, i32 1, i32 1
  store i64 1, i64* %_id_of_gep727
  %_id_of_gep729 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array724, i32 0, i32 1, i32 2
  store i64 2, i64* %_id_of_gep729
  %_id_of_gep731 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array724, i32 0, i32 1, i32 3
  store i64 3, i64* %_id_of_gep731
  %_raw_array733 = call i64* @oat_alloc_array(i64 4)
  %_array734 = bitcast i64* %_raw_array733 to { i64, [0 x i64] }*
  %_id_of_gep735 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array734, i32 0, i32 1, i32 0
  store i64 4, i64* %_id_of_gep735
  %_id_of_gep737 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array734, i32 0, i32 1, i32 1
  store i64 5, i64* %_id_of_gep737
  %_id_of_gep739 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array734, i32 0, i32 1, i32 2
  store i64 6, i64* %_id_of_gep739
  %_id_of_gep741 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array734, i32 0, i32 1, i32 3
  store i64 7, i64* %_id_of_gep741
  %_raw_array743 = call i64* @oat_alloc_array(i64 4)
  %_array744 = bitcast i64* %_raw_array743 to { i64, [0 x i64] }*
  %_id_of_gep745 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array744, i32 0, i32 1, i32 0
  store i64 8, i64* %_id_of_gep745
  %_id_of_gep747 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array744, i32 0, i32 1, i32 1
  store i64 9, i64* %_id_of_gep747
  %_id_of_gep749 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array744, i32 0, i32 1, i32 2
  store i64 10, i64* %_id_of_gep749
  %_id_of_gep751 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array744, i32 0, i32 1, i32 3
  store i64 11, i64* %_id_of_gep751
  %_id_of_gep753 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array722, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array724, { i64, [0 x i64] }** %_id_of_gep753
  %_id_of_gep755 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array722, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array734, { i64, [0 x i64] }** %_id_of_gep755
  %_id_of_gep757 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array722, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array744, { i64, [0 x i64] }** %_id_of_gep757
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array722, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_id_of_decl760
  store i64 0, i64* %_i762
  br label %_entry789
_entry789:
  %_exp_of_id764 = load i64, i64* %_i762
  %_exp_of_bop765 = icmp slt i64 %_exp_of_id764, 3
  br i1 %_exp_of_bop765, label %_body790, label %_exit791
_body790:
  store i64 0, i64* %_j766
  br label %_entry783
_entry783:
  %_exp_of_id768 = load i64, i64* %_j766
  %_exp_of_bop769 = icmp slt i64 %_exp_of_id768, 4
  br i1 %_exp_of_bop769, label %_body784, label %_exit785
_body784:
  %_exp_of_id770 = load i64, i64* %_id_of_decl760
  %_exp_of_id775 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_exp_of_id776 = load i64, i64* %_i762
  %_id_of_index773 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id775, i32 0, i32 1, i64 %_exp_of_id776
  %_id_of_load774 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index773
  %_exp_of_id777 = load i64, i64* %_j766
  %_id_of_index771 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load774, i32 0, i32 1, i64 %_exp_of_id777
  %_id_of_load772 = load i64, i64* %_id_of_index771
  %_exp_of_bop778 = add i64 %_exp_of_id770, %_id_of_load772
  store i64 %_exp_of_bop778, i64* %_id_of_decl760
  %_exp_of_id780 = load i64, i64* %_j766
  %_exp_of_bop781 = add i64 %_exp_of_id780, 1
  store i64 %_exp_of_bop781, i64* %_j766
  br label %_entry783
_exit785:
  %_exp_of_id786 = load i64, i64* %_i762
  %_exp_of_bop787 = add i64 %_exp_of_id786, 1
  store i64 %_exp_of_bop787, i64* %_i762
  br label %_entry789
_exit791:
  %_exp_of_id792 = load i64, i64* %_id_of_decl760
  ret i64 %_exp_of_id792
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

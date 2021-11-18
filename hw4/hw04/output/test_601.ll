; generated from: hw4programs/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_allocated_arg1684 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_allocated_arg1684
  %_exp_of_id1688 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg1684
  %_id_of_index1686 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id1688, i32 0, i32 1, i32 1
  %_id_of_load1687 = load i64, i64* %_id_of_index1686
  ret i64 %_id_of_load1687
}

define i64 @g(i64 %x) {
  %_id_of_decl1662 = alloca { i64, [0 x i64] }*
  %_i1666 = alloca i64
  %_allocated_arg1660 = alloca i64
  store i64 %x, i64* %_allocated_arg1660
  %_raw_array1663 = call i64* @oat_alloc_array(i64 3)
  %_array1664 = bitcast i64* %_raw_array1663 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1664, { i64, [0 x i64] }** %_id_of_decl1662
  store i64 0, i64* %_i1666
  br label %_entry1678
_entry1678:
  %_exp_of_id1668 = load i64, i64* %_i1666
  %_exp_of_bop1669 = icmp slt i64 %_exp_of_id1668, 3
  br i1 %_exp_of_bop1669, label %_body1679, label %_exit1680
_body1679:
  %_exp_of_id1670 = load i64, i64* %_allocated_arg1660
  %_exp_of_id1672 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl1662
  %_exp_of_id1673 = load i64, i64* %_i1666
  %_id_of_gep_exp1674 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id1672, i32 0, i32 1, i64 %_exp_of_id1673
  store i64 %_exp_of_id1670, i64* %_id_of_gep_exp1674
  %_exp_of_id1675 = load i64, i64* %_i1666
  %_exp_of_bop1676 = add i64 %_exp_of_id1675, 1
  store i64 %_exp_of_bop1676, i64* %_i1666
  br label %_entry1678
_exit1680:
  %_exp_of_id1683 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl1662
  %_id_of_index1681 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id1683, i32 0, i32 1, i32 1
  %_id_of_load1682 = load i64, i64* %_id_of_index1681
  ret i64 %_id_of_load1682
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl1588 = alloca { i64, [0 x i64] }*
  %_i1592 = alloca i64
  %_id_of_decl1607 = alloca { i64, [0 x i64] }*
  %_i1611 = alloca i64
  %_id_of_decl1628 = alloca { i64, [0 x i64] }*
  %_i1632 = alloca i64
  %_allocated_arg1584 = alloca i64
  store i64 %argc, i64* %_allocated_arg1584
  %_allocated_arg1586 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg1586
  %_raw_array1589 = call i64* @oat_alloc_array(i64 3)
  %_array1590 = bitcast i64* %_raw_array1589 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1590, { i64, [0 x i64] }** %_id_of_decl1588
  store i64 0, i64* %_i1592
  br label %_entry1604
_entry1604:
  %_exp_of_id1594 = load i64, i64* %_i1592
  %_exp_of_bop1595 = icmp slt i64 %_exp_of_id1594, 3
  br i1 %_exp_of_bop1595, label %_body1605, label %_exit1606
_body1605:
  %_exp_of_id1596 = load i64, i64* %_i1592
  %_exp_of_id1598 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl1588
  %_exp_of_id1599 = load i64, i64* %_i1592
  %_id_of_gep_exp1600 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id1598, i32 0, i32 1, i64 %_exp_of_id1599
  store i64 %_exp_of_id1596, i64* %_id_of_gep_exp1600
  %_exp_of_id1601 = load i64, i64* %_i1592
  %_exp_of_bop1602 = add i64 %_exp_of_id1601, 1
  store i64 %_exp_of_bop1602, i64* %_i1592
  br label %_entry1604
_exit1606:
  %_raw_array1608 = call i64* @oat_alloc_array(i64 4)
  %_array1609 = bitcast i64* %_raw_array1608 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1609, { i64, [0 x i64] }** %_id_of_decl1607
  store i64 0, i64* %_i1611
  br label %_entry1625
_entry1625:
  %_exp_of_id1613 = load i64, i64* %_i1611
  %_exp_of_bop1614 = icmp slt i64 %_exp_of_id1613, 4
  br i1 %_exp_of_bop1614, label %_body1626, label %_exit1627
_body1626:
  %_exp_of_id1615 = load i64, i64* %_i1611
  %_exp_of_id1616 = load i64, i64* %_i1611
  %_exp_of_bop1617 = mul i64 %_exp_of_id1615, %_exp_of_id1616
  %_exp_of_id1619 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl1607
  %_exp_of_id1620 = load i64, i64* %_i1611
  %_id_of_gep_exp1621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id1619, i32 0, i32 1, i64 %_exp_of_id1620
  store i64 %_exp_of_bop1617, i64* %_id_of_gep_exp1621
  %_exp_of_id1622 = load i64, i64* %_i1611
  %_exp_of_bop1623 = add i64 %_exp_of_id1622, 1
  store i64 %_exp_of_bop1623, i64* %_i1611
  br label %_entry1625
_exit1627:
  %_raw_array1629 = call i64* @oat_alloc_array(i64 3)
  %_array1630 = bitcast i64* %_raw_array1629 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1630, { i64, [0 x i64] }** %_id_of_decl1628
  store i64 0, i64* %_i1632
  br label %_entry1645
_entry1645:
  %_exp_of_id1634 = load i64, i64* %_i1632
  %_exp_of_bop1635 = icmp slt i64 %_exp_of_id1634, 3
  br i1 %_exp_of_bop1635, label %_body1646, label %_exit1647
_body1646:
  %_exp_of_id1636 = load i64, i64* %_i1632
  %_exp_of_bop1637 = mul i64 2, %_exp_of_id1636
  %_exp_of_id1639 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl1628
  %_exp_of_id1640 = load i64, i64* %_i1632
  %_id_of_gep_exp1641 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id1639, i32 0, i32 1, i64 %_exp_of_id1640
  store i64 %_exp_of_bop1637, i64* %_id_of_gep_exp1641
  %_exp_of_id1642 = load i64, i64* %_i1632
  %_exp_of_bop1643 = add i64 %_exp_of_id1642, 1
  store i64 %_exp_of_bop1643, i64* %_i1632
  br label %_entry1645
_exit1647:
  %_exp_of_id1650 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl1607
  %_id_of_index1648 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id1650, i32 0, i32 1, i32 3
  %_id_of_load1649 = load i64, i64* %_id_of_index1648
  %_exp_of_id1653 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl1588
  %_id_of_index1651 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id1653, i32 0, i32 1, i32 1
  %_id_of_load1652 = load i64, i64* %_id_of_index1651
  %_exp_of_bop1654 = add i64 %_id_of_load1649, %_id_of_load1652
  %_exp_of_id1656 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl1628
  %_exp_of_call1655 = call i64 @f({ i64, [0 x i64] }* %_exp_of_id1656)
  %_exp_of_bop1657 = add i64 %_exp_of_bop1654, %_exp_of_call1655
  %_exp_of_call1658 = call i64 @g(i64 4)
  %_exp_of_bop1659 = add i64 %_exp_of_bop1657, %_exp_of_call1658
  ret i64 %_exp_of_bop1659
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

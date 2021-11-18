; generated from: hw4programs/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_allocated_arg1916 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg1916
  %_exp_of_id1922 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_allocated_arg1916
  %_id_of_index1920 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1922, i32 0, i32 1, i32 1
  %_id_of_load1921 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index1920
  %_id_of_index1918 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load1921, i32 0, i32 1, i32 1
  %_id_of_load1919 = load i64, i64* %_id_of_index1918
  ret i64 %_id_of_load1919
}

define i64 @g(i64 %x) {
  %_id_of_decl1868 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_allocated_arg1866 = alloca i64
  store i64 %x, i64* %_allocated_arg1866
  %_raw_array1869 = call i64* @oat_alloc_array(i64 3)
  %_array1870 = bitcast i64* %_raw_array1869 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1871 = call i64* @oat_alloc_array(i64 3)
  %_array1872 = bitcast i64* %_raw_array1871 to { i64, [0 x i64] }*
  %_exp_of_id1873 = load i64, i64* %_allocated_arg1866
  %_exp_of_id1874 = load i64, i64* %_allocated_arg1866
  %_exp_of_id1875 = load i64, i64* %_allocated_arg1866
  %_id_of_gep1876 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1872, i32 0, i32 1, i32 0
  store i64 %_exp_of_id1873, i64* %_id_of_gep1876
  %_id_of_gep1878 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1872, i32 0, i32 1, i32 1
  store i64 %_exp_of_id1874, i64* %_id_of_gep1878
  %_id_of_gep1880 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1872, i32 0, i32 1, i32 2
  store i64 %_exp_of_id1875, i64* %_id_of_gep1880
  %_raw_array1882 = call i64* @oat_alloc_array(i64 3)
  %_array1883 = bitcast i64* %_raw_array1882 to { i64, [0 x i64] }*
  %_exp_of_id1884 = load i64, i64* %_allocated_arg1866
  %_exp_of_id1885 = load i64, i64* %_allocated_arg1866
  %_exp_of_id1886 = load i64, i64* %_allocated_arg1866
  %_id_of_gep1887 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1883, i32 0, i32 1, i32 0
  store i64 %_exp_of_id1884, i64* %_id_of_gep1887
  %_id_of_gep1889 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1883, i32 0, i32 1, i32 1
  store i64 %_exp_of_id1885, i64* %_id_of_gep1889
  %_id_of_gep1891 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1883, i32 0, i32 1, i32 2
  store i64 %_exp_of_id1886, i64* %_id_of_gep1891
  %_raw_array1893 = call i64* @oat_alloc_array(i64 3)
  %_array1894 = bitcast i64* %_raw_array1893 to { i64, [0 x i64] }*
  %_exp_of_id1895 = load i64, i64* %_allocated_arg1866
  %_exp_of_id1896 = load i64, i64* %_allocated_arg1866
  %_exp_of_id1897 = load i64, i64* %_allocated_arg1866
  %_id_of_gep1898 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1894, i32 0, i32 1, i32 0
  store i64 %_exp_of_id1895, i64* %_id_of_gep1898
  %_id_of_gep1900 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1894, i32 0, i32 1, i32 1
  store i64 %_exp_of_id1896, i64* %_id_of_gep1900
  %_id_of_gep1902 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1894, i32 0, i32 1, i32 2
  store i64 %_exp_of_id1897, i64* %_id_of_gep1902
  %_id_of_gep1904 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1870, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1872, { i64, [0 x i64] }** %_id_of_gep1904
  %_id_of_gep1906 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1870, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1883, { i64, [0 x i64] }** %_id_of_gep1906
  %_id_of_gep1908 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1870, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1894, { i64, [0 x i64] }** %_id_of_gep1908
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1870, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1868
  %_exp_of_id1915 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1868
  %_id_of_index1913 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1915, i32 0, i32 1, i32 1
  %_id_of_load1914 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index1913
  %_id_of_index1911 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load1914, i32 0, i32 1, i32 1
  %_id_of_load1912 = load i64, i64* %_id_of_index1911
  ret i64 %_id_of_load1912
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl1693 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_id_of_decl1727 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_id_of_decl1807 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_allocated_arg1689 = alloca i64
  store i64 %argc, i64* %_allocated_arg1689
  %_allocated_arg1691 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg1691
  %_raw_array1694 = call i64* @oat_alloc_array(i64 3)
  %_array1695 = bitcast i64* %_raw_array1694 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1696 = call i64* @oat_alloc_array(i64 3)
  %_array1697 = bitcast i64* %_raw_array1696 to { i64, [0 x i64] }*
  %_id_of_gep1698 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1697, i32 0, i32 1, i32 0
  store i64 0, i64* %_id_of_gep1698
  %_id_of_gep1700 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1697, i32 0, i32 1, i32 1
  store i64 1, i64* %_id_of_gep1700
  %_id_of_gep1702 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1697, i32 0, i32 1, i32 2
  store i64 2, i64* %_id_of_gep1702
  %_raw_array1704 = call i64* @oat_alloc_array(i64 3)
  %_array1705 = bitcast i64* %_raw_array1704 to { i64, [0 x i64] }*
  %_id_of_gep1706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1705, i32 0, i32 1, i32 0
  store i64 0, i64* %_id_of_gep1706
  %_id_of_gep1708 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1705, i32 0, i32 1, i32 1
  store i64 1, i64* %_id_of_gep1708
  %_id_of_gep1710 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1705, i32 0, i32 1, i32 2
  store i64 2, i64* %_id_of_gep1710
  %_raw_array1712 = call i64* @oat_alloc_array(i64 3)
  %_array1713 = bitcast i64* %_raw_array1712 to { i64, [0 x i64] }*
  %_id_of_gep1714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1713, i32 0, i32 1, i32 0
  store i64 0, i64* %_id_of_gep1714
  %_id_of_gep1716 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1713, i32 0, i32 1, i32 1
  store i64 1, i64* %_id_of_gep1716
  %_id_of_gep1718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1713, i32 0, i32 1, i32 2
  store i64 2, i64* %_id_of_gep1718
  %_id_of_gep1720 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1695, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1697, { i64, [0 x i64] }** %_id_of_gep1720
  %_id_of_gep1722 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1695, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1705, { i64, [0 x i64] }** %_id_of_gep1722
  %_id_of_gep1724 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1695, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1713, { i64, [0 x i64] }** %_id_of_gep1724
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1695, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1693
  %_raw_array1728 = call i64* @oat_alloc_array(i64 4)
  %_array1729 = bitcast i64* %_raw_array1728 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1730 = call i64* @oat_alloc_array(i64 5)
  %_array1731 = bitcast i64* %_raw_array1730 to { i64, [0 x i64] }*
  %_exp_of_bop1732 = mul i64 0, 0
  %_exp_of_bop1733 = mul i64 0, 1
  %_exp_of_bop1734 = mul i64 0, 2
  %_exp_of_bop1735 = mul i64 0, 3
  %_exp_of_bop1736 = mul i64 0, 4
  %_id_of_gep1737 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1731, i32 0, i32 1, i32 0
  store i64 %_exp_of_bop1732, i64* %_id_of_gep1737
  %_id_of_gep1739 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1731, i32 0, i32 1, i32 1
  store i64 %_exp_of_bop1733, i64* %_id_of_gep1739
  %_id_of_gep1741 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1731, i32 0, i32 1, i32 2
  store i64 %_exp_of_bop1734, i64* %_id_of_gep1741
  %_id_of_gep1743 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1731, i32 0, i32 1, i32 3
  store i64 %_exp_of_bop1735, i64* %_id_of_gep1743
  %_id_of_gep1745 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1731, i32 0, i32 1, i32 4
  store i64 %_exp_of_bop1736, i64* %_id_of_gep1745
  %_raw_array1747 = call i64* @oat_alloc_array(i64 5)
  %_array1748 = bitcast i64* %_raw_array1747 to { i64, [0 x i64] }*
  %_exp_of_bop1749 = mul i64 1, 0
  %_exp_of_bop1750 = mul i64 1, 1
  %_exp_of_bop1751 = mul i64 1, 2
  %_exp_of_bop1752 = mul i64 1, 3
  %_exp_of_bop1753 = mul i64 1, 4
  %_id_of_gep1754 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1748, i32 0, i32 1, i32 0
  store i64 %_exp_of_bop1749, i64* %_id_of_gep1754
  %_id_of_gep1756 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1748, i32 0, i32 1, i32 1
  store i64 %_exp_of_bop1750, i64* %_id_of_gep1756
  %_id_of_gep1758 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1748, i32 0, i32 1, i32 2
  store i64 %_exp_of_bop1751, i64* %_id_of_gep1758
  %_id_of_gep1760 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1748, i32 0, i32 1, i32 3
  store i64 %_exp_of_bop1752, i64* %_id_of_gep1760
  %_id_of_gep1762 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1748, i32 0, i32 1, i32 4
  store i64 %_exp_of_bop1753, i64* %_id_of_gep1762
  %_raw_array1764 = call i64* @oat_alloc_array(i64 5)
  %_array1765 = bitcast i64* %_raw_array1764 to { i64, [0 x i64] }*
  %_exp_of_bop1766 = mul i64 2, 0
  %_exp_of_bop1767 = mul i64 2, 1
  %_exp_of_bop1768 = mul i64 2, 2
  %_exp_of_bop1769 = mul i64 2, 3
  %_exp_of_bop1770 = mul i64 2, 4
  %_id_of_gep1771 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1765, i32 0, i32 1, i32 0
  store i64 %_exp_of_bop1766, i64* %_id_of_gep1771
  %_id_of_gep1773 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1765, i32 0, i32 1, i32 1
  store i64 %_exp_of_bop1767, i64* %_id_of_gep1773
  %_id_of_gep1775 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1765, i32 0, i32 1, i32 2
  store i64 %_exp_of_bop1768, i64* %_id_of_gep1775
  %_id_of_gep1777 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1765, i32 0, i32 1, i32 3
  store i64 %_exp_of_bop1769, i64* %_id_of_gep1777
  %_id_of_gep1779 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1765, i32 0, i32 1, i32 4
  store i64 %_exp_of_bop1770, i64* %_id_of_gep1779
  %_raw_array1781 = call i64* @oat_alloc_array(i64 5)
  %_array1782 = bitcast i64* %_raw_array1781 to { i64, [0 x i64] }*
  %_exp_of_bop1783 = mul i64 3, 0
  %_exp_of_bop1784 = mul i64 3, 1
  %_exp_of_bop1785 = mul i64 3, 2
  %_exp_of_bop1786 = mul i64 3, 3
  %_exp_of_bop1787 = mul i64 3, 4
  %_id_of_gep1788 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1782, i32 0, i32 1, i32 0
  store i64 %_exp_of_bop1783, i64* %_id_of_gep1788
  %_id_of_gep1790 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1782, i32 0, i32 1, i32 1
  store i64 %_exp_of_bop1784, i64* %_id_of_gep1790
  %_id_of_gep1792 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1782, i32 0, i32 1, i32 2
  store i64 %_exp_of_bop1785, i64* %_id_of_gep1792
  %_id_of_gep1794 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1782, i32 0, i32 1, i32 3
  store i64 %_exp_of_bop1786, i64* %_id_of_gep1794
  %_id_of_gep1796 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1782, i32 0, i32 1, i32 4
  store i64 %_exp_of_bop1787, i64* %_id_of_gep1796
  %_id_of_gep1798 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1729, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1731, { i64, [0 x i64] }** %_id_of_gep1798
  %_id_of_gep1800 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1729, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1748, { i64, [0 x i64] }** %_id_of_gep1800
  %_id_of_gep1802 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1729, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1765, { i64, [0 x i64] }** %_id_of_gep1802
  %_id_of_gep1804 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1729, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1782, { i64, [0 x i64] }** %_id_of_gep1804
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1729, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1727
  %_raw_array1808 = call i64* @oat_alloc_array(i64 3)
  %_array1809 = bitcast i64* %_raw_array1808 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1810 = call i64* @oat_alloc_array(i64 3)
  %_array1811 = bitcast i64* %_raw_array1810 to { i64, [0 x i64] }*
  %_exp_of_bop1812 = mul i64 0, 0
  %_exp_of_bop1813 = mul i64 0, 1
  %_exp_of_bop1814 = mul i64 0, 2
  %_id_of_gep1815 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1811, i32 0, i32 1, i32 0
  store i64 %_exp_of_bop1812, i64* %_id_of_gep1815
  %_id_of_gep1817 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1811, i32 0, i32 1, i32 1
  store i64 %_exp_of_bop1813, i64* %_id_of_gep1817
  %_id_of_gep1819 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1811, i32 0, i32 1, i32 2
  store i64 %_exp_of_bop1814, i64* %_id_of_gep1819
  %_raw_array1821 = call i64* @oat_alloc_array(i64 3)
  %_array1822 = bitcast i64* %_raw_array1821 to { i64, [0 x i64] }*
  %_exp_of_bop1823 = mul i64 1, 0
  %_exp_of_bop1824 = mul i64 1, 1
  %_exp_of_bop1825 = mul i64 1, 2
  %_id_of_gep1826 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1822, i32 0, i32 1, i32 0
  store i64 %_exp_of_bop1823, i64* %_id_of_gep1826
  %_id_of_gep1828 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1822, i32 0, i32 1, i32 1
  store i64 %_exp_of_bop1824, i64* %_id_of_gep1828
  %_id_of_gep1830 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1822, i32 0, i32 1, i32 2
  store i64 %_exp_of_bop1825, i64* %_id_of_gep1830
  %_raw_array1832 = call i64* @oat_alloc_array(i64 3)
  %_array1833 = bitcast i64* %_raw_array1832 to { i64, [0 x i64] }*
  %_exp_of_bop1834 = mul i64 2, 0
  %_exp_of_bop1835 = mul i64 2, 1
  %_exp_of_bop1836 = mul i64 2, 2
  %_id_of_gep1837 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1833, i32 0, i32 1, i32 0
  store i64 %_exp_of_bop1834, i64* %_id_of_gep1837
  %_id_of_gep1839 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1833, i32 0, i32 1, i32 1
  store i64 %_exp_of_bop1835, i64* %_id_of_gep1839
  %_id_of_gep1841 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1833, i32 0, i32 1, i32 2
  store i64 %_exp_of_bop1836, i64* %_id_of_gep1841
  %_id_of_gep1843 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1809, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1811, { i64, [0 x i64] }** %_id_of_gep1843
  %_id_of_gep1845 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1809, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1822, { i64, [0 x i64] }** %_id_of_gep1845
  %_id_of_gep1847 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1809, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1833, { i64, [0 x i64] }** %_id_of_gep1847
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1809, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1807
  %_exp_of_id1854 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1727
  %_id_of_index1852 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1854, i32 0, i32 1, i32 3
  %_id_of_load1853 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index1852
  %_id_of_index1850 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load1853, i32 0, i32 1, i32 4
  %_id_of_load1851 = load i64, i64* %_id_of_index1850
  %_exp_of_id1859 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1693
  %_id_of_index1857 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1859, i32 0, i32 1, i32 1
  %_id_of_load1858 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index1857
  %_id_of_index1855 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load1858, i32 0, i32 1, i32 2
  %_id_of_load1856 = load i64, i64* %_id_of_index1855
  %_exp_of_bop1860 = add i64 %_id_of_load1851, %_id_of_load1856
  %_exp_of_id1862 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1807
  %_exp_of_call1861 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1862)
  %_exp_of_bop1863 = add i64 %_exp_of_bop1860, %_exp_of_call1861
  %_exp_of_call1864 = call i64 @g(i64 4)
  %_exp_of_bop1865 = add i64 %_exp_of_bop1863, %_exp_of_call1864
  ret i64 %_exp_of_bop1865
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

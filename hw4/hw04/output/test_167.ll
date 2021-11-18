; generated from: hw4programs/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl1927 = alloca i64
  %_id_of_decl1929 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_id_of_decl1990 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_allocated_arg1923 = alloca i64
  store i64 %argc, i64* %_allocated_arg1923
  %_allocated_arg1925 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg1925
  store i64 10, i64* %_id_of_decl1927
  %_raw_array1930 = call i64* @oat_alloc_array(i64 3)
  %_array1931 = bitcast i64* %_raw_array1930 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1932 = call i64* @oat_alloc_array(i64 3)
  %_array1933 = bitcast i64* %_raw_array1932 to { i64, [0 x i64] }*
  %_exp_of_id1934 = load i64, i64* %_id_of_decl1927
  %_exp_of_bop1935 = add i64 %_exp_of_id1934, 0
  %_exp_of_bop1936 = add i64 %_exp_of_bop1935, 0
  %_exp_of_id1937 = load i64, i64* %_id_of_decl1927
  %_exp_of_bop1938 = add i64 %_exp_of_id1937, 0
  %_exp_of_bop1939 = add i64 %_exp_of_bop1938, 1
  %_exp_of_id1940 = load i64, i64* %_id_of_decl1927
  %_exp_of_bop1941 = add i64 %_exp_of_id1940, 0
  %_exp_of_bop1942 = add i64 %_exp_of_bop1941, 2
  %_id_of_gep1943 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1933, i32 0, i32 1, i32 0
  store i64 %_exp_of_bop1936, i64* %_id_of_gep1943
  %_id_of_gep1945 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1933, i32 0, i32 1, i32 1
  store i64 %_exp_of_bop1939, i64* %_id_of_gep1945
  %_id_of_gep1947 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1933, i32 0, i32 1, i32 2
  store i64 %_exp_of_bop1942, i64* %_id_of_gep1947
  %_raw_array1949 = call i64* @oat_alloc_array(i64 3)
  %_array1950 = bitcast i64* %_raw_array1949 to { i64, [0 x i64] }*
  %_exp_of_id1951 = load i64, i64* %_id_of_decl1927
  %_exp_of_bop1952 = add i64 %_exp_of_id1951, 1
  %_exp_of_bop1953 = add i64 %_exp_of_bop1952, 0
  %_exp_of_id1954 = load i64, i64* %_id_of_decl1927
  %_exp_of_bop1955 = add i64 %_exp_of_id1954, 1
  %_exp_of_bop1956 = add i64 %_exp_of_bop1955, 1
  %_exp_of_id1957 = load i64, i64* %_id_of_decl1927
  %_exp_of_bop1958 = add i64 %_exp_of_id1957, 1
  %_exp_of_bop1959 = add i64 %_exp_of_bop1958, 2
  %_id_of_gep1960 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1950, i32 0, i32 1, i32 0
  store i64 %_exp_of_bop1953, i64* %_id_of_gep1960
  %_id_of_gep1962 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1950, i32 0, i32 1, i32 1
  store i64 %_exp_of_bop1956, i64* %_id_of_gep1962
  %_id_of_gep1964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1950, i32 0, i32 1, i32 2
  store i64 %_exp_of_bop1959, i64* %_id_of_gep1964
  %_raw_array1966 = call i64* @oat_alloc_array(i64 3)
  %_array1967 = bitcast i64* %_raw_array1966 to { i64, [0 x i64] }*
  %_exp_of_id1968 = load i64, i64* %_id_of_decl1927
  %_exp_of_bop1969 = add i64 %_exp_of_id1968, 2
  %_exp_of_bop1970 = add i64 %_exp_of_bop1969, 0
  %_exp_of_id1971 = load i64, i64* %_id_of_decl1927
  %_exp_of_bop1972 = add i64 %_exp_of_id1971, 2
  %_exp_of_bop1973 = add i64 %_exp_of_bop1972, 1
  %_exp_of_id1974 = load i64, i64* %_id_of_decl1927
  %_exp_of_bop1975 = add i64 %_exp_of_id1974, 2
  %_exp_of_bop1976 = add i64 %_exp_of_bop1975, 2
  %_id_of_gep1977 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1967, i32 0, i32 1, i32 0
  store i64 %_exp_of_bop1970, i64* %_id_of_gep1977
  %_id_of_gep1979 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1967, i32 0, i32 1, i32 1
  store i64 %_exp_of_bop1973, i64* %_id_of_gep1979
  %_id_of_gep1981 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1967, i32 0, i32 1, i32 2
  store i64 %_exp_of_bop1976, i64* %_id_of_gep1981
  %_id_of_gep1983 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1931, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1933, { i64, [0 x i64] }** %_id_of_gep1983
  %_id_of_gep1985 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1931, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1950, { i64, [0 x i64] }** %_id_of_gep1985
  %_id_of_gep1987 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1931, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1967, { i64, [0 x i64] }** %_id_of_gep1987
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1931, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1929
  %_exp_of_id1991 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1929
  store { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1991, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1990
  %_exp_of_id1997 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1990
  %_id_of_index1995 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1997, i32 0, i32 1, i32 2
  %_id_of_load1996 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index1995
  %_id_of_index1993 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load1996, i32 0, i32 1, i32 1
  %_id_of_load1994 = load i64, i64* %_id_of_index1993
  ret i64 %_id_of_load1994
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

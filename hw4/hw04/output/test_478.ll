; generated from: hw4programs/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl948 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_id_of_decl964 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_id_of_decl980 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_id_of_decl996 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_id_of_decl1012 = alloca { i64, [0 x i64] }*
  %_allocated_arg944 = alloca i64
  store i64 %argc, i64* %_allocated_arg944
  %_allocated_arg946 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg946
  %_raw_array949 = call i64* @oat_alloc_array(i64 3)
  %_array950 = bitcast i64* %_raw_array949 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array951 = call i64* @oat_alloc_array(i64 1)
  %_array952 = bitcast i64* %_raw_array951 to { i64, [0 x i64] }*
  %_raw_array953 = call i64* @oat_alloc_array(i64 1)
  %_array954 = bitcast i64* %_raw_array953 to { i64, [0 x i64] }*
  %_raw_array955 = call i64* @oat_alloc_array(i64 1)
  %_array956 = bitcast i64* %_raw_array955 to { i64, [0 x i64] }*
  %_id_of_gep957 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array950, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array952, { i64, [0 x i64] }** %_id_of_gep957
  %_id_of_gep959 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array950, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array954, { i64, [0 x i64] }** %_id_of_gep959
  %_id_of_gep961 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array950, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array956, { i64, [0 x i64] }** %_id_of_gep961
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array950, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl948
  %_raw_array965 = call i64* @oat_alloc_array(i64 3)
  %_array966 = bitcast i64* %_raw_array965 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array967 = call i64* @oat_alloc_array(i64 1)
  %_array968 = bitcast i64* %_raw_array967 to { i64, [0 x i64] }*
  %_raw_array969 = call i64* @oat_alloc_array(i64 1)
  %_array970 = bitcast i64* %_raw_array969 to { i64, [0 x i64] }*
  %_raw_array971 = call i64* @oat_alloc_array(i64 1)
  %_array972 = bitcast i64* %_raw_array971 to { i64, [0 x i64] }*
  %_id_of_gep973 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array966, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array968, { i64, [0 x i64] }** %_id_of_gep973
  %_id_of_gep975 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array966, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array970, { i64, [0 x i64] }** %_id_of_gep975
  %_id_of_gep977 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array966, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array972, { i64, [0 x i64] }** %_id_of_gep977
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array966, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl964
  %_raw_array981 = call i64* @oat_alloc_array(i64 3)
  %_array982 = bitcast i64* %_raw_array981 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array983 = call i64* @oat_alloc_array(i64 1)
  %_array984 = bitcast i64* %_raw_array983 to { i64, [0 x i64] }*
  %_raw_array985 = call i64* @oat_alloc_array(i64 1)
  %_array986 = bitcast i64* %_raw_array985 to { i64, [0 x i64] }*
  %_raw_array987 = call i64* @oat_alloc_array(i64 1)
  %_array988 = bitcast i64* %_raw_array987 to { i64, [0 x i64] }*
  %_id_of_gep989 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array982, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array984, { i64, [0 x i64] }** %_id_of_gep989
  %_id_of_gep991 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array982, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array986, { i64, [0 x i64] }** %_id_of_gep991
  %_id_of_gep993 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array982, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array988, { i64, [0 x i64] }** %_id_of_gep993
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array982, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl980
  %_raw_array997 = call i64* @oat_alloc_array(i64 3)
  %_array998 = bitcast i64* %_raw_array997 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array999 = call i64* @oat_alloc_array(i64 1)
  %_array1000 = bitcast i64* %_raw_array999 to { i64, [0 x i64] }*
  %_raw_array1001 = call i64* @oat_alloc_array(i64 1)
  %_array1002 = bitcast i64* %_raw_array1001 to { i64, [0 x i64] }*
  %_raw_array1003 = call i64* @oat_alloc_array(i64 1)
  %_array1004 = bitcast i64* %_raw_array1003 to { i64, [0 x i64] }*
  %_id_of_gep1005 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array998, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1000, { i64, [0 x i64] }** %_id_of_gep1005
  %_id_of_gep1007 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array998, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1002, { i64, [0 x i64] }** %_id_of_gep1007
  %_id_of_gep1009 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array998, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1004, { i64, [0 x i64] }** %_id_of_gep1009
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array998, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl996
  %_raw_array1013 = call i64* @oat_alloc_array(i64 3)
  %_array1014 = bitcast i64* %_raw_array1013 to { i64, [0 x i64] }*
  %_id_of_gep1015 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1014, i32 0, i32 1, i32 0
  store i64 0, i64* %_id_of_gep1015
  %_id_of_gep1017 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1014, i32 0, i32 1, i32 1
  store i64 1, i64* %_id_of_gep1017
  %_id_of_gep1019 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1014, i32 0, i32 1, i32 2
  store i64 2, i64* %_id_of_gep1019
  store { i64, [0 x i64] }* %_array1014, { i64, [0 x i64] }** %_id_of_decl1012
  %_exp_of_id1022 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl1012
  %_exp_of_id1024 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl964
  %_id_of_gep_exp1025 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1024, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_exp_of_id1022, { i64, [0 x i64] }** %_id_of_gep_exp1025
  %_exp_of_id1029 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl964
  %_id_of_index1027 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1029, i32 0, i32 1, i32 0
  %_id_of_load1028 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index1027
  %_id_of_gep_exp1030 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load1028, i32 0, i32 1, i32 0
  store i64 2, i64* %_id_of_gep_exp1030
  %_exp_of_id1031 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl964
  store { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1031, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl948
  %_exp_of_id1033 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl948
  store { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1033, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl980
  %_exp_of_id1035 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl996
  store { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1035, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl948
  %_exp_of_id1037 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl980
  store { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1037, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl964
  %_exp_of_id1039 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl964
  store { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1039, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl996
  %_exp_of_id1041 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl996
  store { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1041, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl980
  %_exp_of_id1047 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl980
  %_id_of_index1045 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1047, i32 0, i32 1, i32 0
  %_id_of_load1046 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index1045
  %_id_of_index1043 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load1046, i32 0, i32 1, i32 0
  %_id_of_load1044 = load i64, i64* %_id_of_index1043
  ret i64 %_id_of_load1044
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

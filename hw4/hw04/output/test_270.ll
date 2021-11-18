; generated from: hw4programs/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1
@_const_of_global1583 = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_allocated_arg1578 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_allocated_arg1578
  %_exp_of_id1582 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg1578
  %_id_of_index1580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id1582, i32 0, i32 1, i32 3
  %_id_of_load1581 = load i64, i64* %_id_of_index1580
  ret i64 %_id_of_load1581
}

define { i64, [0 x i64] }* @g() {
  %_id_of_decl1565 = alloca { i64, [0 x i64] }*
  %_raw_array1566 = call i64* @oat_alloc_array(i64 4)
  %_array1567 = bitcast i64* %_raw_array1566 to { i64, [0 x i64] }*
  %_id_of_gep1568 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1567, i32 0, i32 1, i32 0
  store i64 99, i64* %_id_of_gep1568
  %_id_of_gep1570 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1567, i32 0, i32 1, i32 1
  store i64 1, i64* %_id_of_gep1570
  %_id_of_gep1572 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1567, i32 0, i32 1, i32 2
  store i64 99, i64* %_id_of_gep1572
  %_id_of_gep1574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1567, i32 0, i32 1, i32 3
  store i64 99, i64* %_id_of_gep1574
  store { i64, [0 x i64] }* %_array1567, { i64, [0 x i64] }** %_id_of_decl1565
  %_exp_of_id1577 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl1565
  ret { i64, [0 x i64] }* %_exp_of_id1577
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl1468 = alloca { i64, [0 x i64] }*
  %_id_of_decl1478 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_id_of_decl1512 = alloca i64
  %_id_of_decl1514 = alloca { i64, [0 x i64] }*
  %_id_of_decl1517 = alloca { i64, [0 x i64] }*
  %_allocated_arg1464 = alloca i64
  store i64 %argc, i64* %_allocated_arg1464
  %_allocated_arg1466 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg1466
  %_raw_array1469 = call i64* @oat_alloc_array(i64 3)
  %_array1470 = bitcast i64* %_raw_array1469 to { i64, [0 x i64] }*
  %_id_of_gep1471 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1470, i32 0, i32 1, i32 0
  store i64 99, i64* %_id_of_gep1471
  %_id_of_gep1473 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1470, i32 0, i32 1, i32 1
  store i64 1, i64* %_id_of_gep1473
  %_id_of_gep1475 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1470, i32 0, i32 1, i32 2
  store i64 99, i64* %_id_of_gep1475
  store { i64, [0 x i64] }* %_array1470, { i64, [0 x i64] }** %_id_of_decl1468
  %_raw_array1479 = call i64* @oat_alloc_array(i64 3)
  %_array1480 = bitcast i64* %_raw_array1479 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1481 = call i64* @oat_alloc_array(i64 3)
  %_array1482 = bitcast i64* %_raw_array1481 to { i64, [0 x i64] }*
  %_id_of_gep1483 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1482, i32 0, i32 1, i32 0
  store i64 99, i64* %_id_of_gep1483
  %_id_of_gep1485 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1482, i32 0, i32 1, i32 1
  store i64 99, i64* %_id_of_gep1485
  %_id_of_gep1487 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1482, i32 0, i32 1, i32 2
  store i64 99, i64* %_id_of_gep1487
  %_raw_array1489 = call i64* @oat_alloc_array(i64 3)
  %_array1490 = bitcast i64* %_raw_array1489 to { i64, [0 x i64] }*
  %_id_of_gep1491 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1490, i32 0, i32 1, i32 0
  store i64 99, i64* %_id_of_gep1491
  %_id_of_gep1493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1490, i32 0, i32 1, i32 1
  store i64 1, i64* %_id_of_gep1493
  %_id_of_gep1495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1490, i32 0, i32 1, i32 2
  store i64 99, i64* %_id_of_gep1495
  %_raw_array1497 = call i64* @oat_alloc_array(i64 3)
  %_array1498 = bitcast i64* %_raw_array1497 to { i64, [0 x i64] }*
  %_id_of_gep1499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1498, i32 0, i32 1, i32 0
  store i64 99, i64* %_id_of_gep1499
  %_id_of_gep1501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1498, i32 0, i32 1, i32 1
  store i64 99, i64* %_id_of_gep1501
  %_id_of_gep1503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1498, i32 0, i32 1, i32 2
  store i64 99, i64* %_id_of_gep1503
  %_id_of_gep1505 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1480, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1482, { i64, [0 x i64] }** %_id_of_gep1505
  %_id_of_gep1507 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1480, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1490, { i64, [0 x i64] }** %_id_of_gep1507
  %_id_of_gep1509 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1480, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1498, { i64, [0 x i64] }** %_id_of_gep1509
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1480, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1478
  store i64 1, i64* %_id_of_decl1512
  %_exp_of_call1515 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_exp_of_call1515, { i64, [0 x i64] }** %_id_of_decl1514
  %_raw_array1518 = call i64* @oat_alloc_array(i64 4)
  %_array1519 = bitcast i64* %_raw_array1518 to { i64, [0 x i64] }*
  %_id_of_gep1520 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1519, i32 0, i32 1, i32 0
  store i64 99, i64* %_id_of_gep1520
  %_id_of_gep1522 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1519, i32 0, i32 1, i32 1
  store i64 99, i64* %_id_of_gep1522
  %_id_of_gep1524 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1519, i32 0, i32 1, i32 2
  store i64 99, i64* %_id_of_gep1524
  %_id_of_gep1526 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1519, i32 0, i32 1, i32 3
  store i64 1, i64* %_id_of_gep1526
  store { i64, [0 x i64] }* %_array1519, { i64, [0 x i64] }** %_id_of_decl1517
  %_exp_of_id1529 = load i64, i64* %_id_of_decl1512
  %_exp_of_id1530 = load i64, i64* @i
  %_exp_of_bop1531 = add i64 %_exp_of_id1529, %_exp_of_id1530
  store i64 %_exp_of_bop1531, i64* %_id_of_decl1512
  %_exp_of_id1533 = load i64, i64* %_id_of_decl1512
  %_exp_of_id1536 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl1468
  %_id_of_index1534 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id1536, i32 0, i32 1, i32 1
  %_id_of_load1535 = load i64, i64* %_id_of_index1534
  %_exp_of_bop1537 = add i64 %_exp_of_id1533, %_id_of_load1535
  store i64 %_exp_of_bop1537, i64* %_id_of_decl1512
  %_exp_of_id1539 = load i64, i64* %_id_of_decl1512
  %_exp_of_id1544 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_id_of_decl1478
  %_id_of_index1542 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_exp_of_id1544, i32 0, i32 1, i32 1
  %_id_of_load1543 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_index1542
  %_id_of_index1540 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_id_of_load1543, i32 0, i32 1, i32 1
  %_id_of_load1541 = load i64, i64* %_id_of_index1540
  %_exp_of_bop1545 = add i64 %_exp_of_id1539, %_id_of_load1541
  store i64 %_exp_of_bop1545, i64* %_id_of_decl1512
  %_exp_of_id1547 = load i64, i64* %_id_of_decl1512
  %_exp_of_id1550 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl1517
  %_id_of_index1548 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id1550, i32 0, i32 1, i32 3
  %_id_of_load1549 = load i64, i64* %_id_of_index1548
  %_exp_of_bop1551 = add i64 %_exp_of_id1547, %_id_of_load1549
  store i64 %_exp_of_bop1551, i64* %_id_of_decl1512
  %_exp_of_id1553 = load i64, i64* %_id_of_decl1512
  %_exp_of_id1555 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl1517
  %_exp_of_call1554 = call i64 @f({ i64, [0 x i64] }* %_exp_of_id1555)
  %_exp_of_bop1556 = add i64 %_exp_of_id1553, %_exp_of_call1554
  store i64 %_exp_of_bop1556, i64* %_id_of_decl1512
  %_exp_of_id1558 = load i64, i64* %_id_of_decl1512
  %_exp_of_id1561 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_id_of_decl1514
  %_id_of_index1559 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id1561, i32 0, i32 1, i32 1
  %_id_of_load1560 = load i64, i64* %_id_of_index1559
  %_exp_of_bop1562 = add i64 %_exp_of_id1558, %_id_of_load1560
  store i64 %_exp_of_bop1562, i64* %_id_of_decl1512
  %_exp_of_id1564 = load i64, i64* %_id_of_decl1512
  ret i64 %_exp_of_id1564
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

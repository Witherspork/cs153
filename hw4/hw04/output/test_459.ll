; generated from: hw4programs/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_const_of_global496 to { i64, [0 x i64] }*)
@_const_of_global497 = global i64 1
@_const_of_global498 = global i64 2
@_const_of_global499 = global i64 3
@_const_of_global496 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_const_of_global492 to { i64, [0 x i64] }*)
@_const_of_global493 = global i64 4
@_const_of_global494 = global i64 5
@_const_of_global495 = global i64 6
@_const_of_global492 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_allocated_arg500 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_allocated_arg500
  %_allocated_arg502 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_allocated_arg502
  %_allocated_arg504 = alloca i1
  store i1 %b, i1* %_allocated_arg504
  %_exp_of_id506 = load i1, i1* %_allocated_arg504
  br i1 %_exp_of_id506, label %_branch_of_eq510, label %_branch_of_neq511
_branch_of_eq510:
  %_exp_of_id507 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg500
  ret { i64, [0 x i64] }* %_exp_of_id507
_branch_of_neq511:
  %_exp_of_id508 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg502
  ret { i64, [0 x i64] }* %_exp_of_id508
_merge509:
  ret { i64, [0 x i64] }* null
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_id_of_decl478 = alloca i64
  %_allocated_arg469 = alloca i64
  store i64 %argc, i64* %_allocated_arg469
  %_allocated_arg471 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg471
  %_exp_of_id475 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_exp_of_id476 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_exp_of_call474 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_exp_of_id475, { i64, [0 x i64] }* %_exp_of_id476, i1 1)
  %_id_of_gep_exp477 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_call474, i32 0, i32 1, i32 0
  store i64 17, i64* %_id_of_gep_exp477
  %_exp_of_id482 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_exp_of_id483 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_exp_of_call481 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_exp_of_id482, { i64, [0 x i64] }* %_exp_of_id483, i1 1)
  %_id_of_index479 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_call481, i32 0, i32 1, i32 0
  %_id_of_load480 = load i64, i64* %_id_of_index479
  %_exp_of_id487 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_exp_of_id488 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_exp_of_call486 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_exp_of_id487, { i64, [0 x i64] }* %_exp_of_id488, i1 0)
  %_id_of_index484 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_call486, i32 0, i32 1, i32 0
  %_id_of_load485 = load i64, i64* %_id_of_index484
  %_exp_of_bop489 = add i64 %_id_of_load480, %_id_of_load485
  store i64 %_exp_of_bop489, i64* %_id_of_decl478
  %_exp_of_id491 = load i64, i64* %_id_of_decl478
  ret i64 %_exp_of_id491
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

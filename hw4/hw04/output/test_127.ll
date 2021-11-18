; generated from: hw4programs/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_const_of_global413 to { i64, [0 x i64] }*)
@_const_of_global414 = global i64 1
@_const_of_global415 = global i64 2
@_const_of_global416 = global i64 3
@_const_of_global413 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_const_of_global409 to { i64, [0 x i64] }*)
@_const_of_global410 = global i64 4
@_const_of_global411 = global i64 5
@_const_of_global412 = global i64 6
@_const_of_global409 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_allocated_arg417 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_allocated_arg417
  %_allocated_arg419 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_allocated_arg419
  %_allocated_arg421 = alloca i1
  store i1 %b, i1* %_allocated_arg421
  %_exp_of_id423 = load i1, i1* %_allocated_arg421
  br i1 %_exp_of_id423, label %_branch_of_eq427, label %_branch_of_neq428
_branch_of_eq427:
  %_exp_of_id424 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg417
  ret { i64, [0 x i64] }* %_exp_of_id424
_branch_of_neq428:
  %_exp_of_id425 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_allocated_arg419
  ret { i64, [0 x i64] }* %_exp_of_id425
_merge426:
  ret { i64, [0 x i64] }* null
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_allocated_arg397 = alloca i64
  store i64 %argc, i64* %_allocated_arg397
  %_allocated_arg399 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_allocated_arg399
  %_exp_of_id403 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_exp_of_id404 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_exp_of_call402 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_exp_of_id403, { i64, [0 x i64] }* %_exp_of_id404, i1 1)
  %_id_of_gep_exp405 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_call402, i32 0, i32 1, i32 0
  store i64 17, i64* %_id_of_gep_exp405
  %_exp_of_id408 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_id_of_index406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_exp_of_id408, i32 0, i32 1, i32 0
  %_id_of_load407 = load i64, i64* %_id_of_index406
  ret i64 %_id_of_load407
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

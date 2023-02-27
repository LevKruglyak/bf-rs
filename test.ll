; <bf_rs::optimizing::OptimizedInterpreter<S> as bf_rs::BFExecutor>::run
; Function Attrs: noinline uwtable
define internal fastcc void @"<bf_rs::optimizing::OptimizedInterpreter<S> as bf_rs::BFExecutor>::run"(ptr noalias noundef align 8 dereferenceable(65568) %self, ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3925 {
start:
  %_2.i.i44 = alloca ptr, align 8
  %_2.i.i = alloca ptr, align 8
  %_80 = alloca %"core::fmt::Arguments<'_>", align 8
  %_72 = alloca %"core::fmt::Arguments<'_>", align 8
  %_58 = alloca %"core::fmt::Arguments<'_>", align 8
  %_37 = alloca %"core::result::Result<usize, std::io::error::Error>", align 8
  %_29 = alloca %"core::result::Result<usize, std::io::error::Error>", align 8
  %output = alloca ptr, align 8
  %input = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4097, metadata !DIExpression()), !dbg !4120
  store ptr %0, ptr %input, align 8
  call void @llvm.dbg.value(metadata ptr %1, metadata !4098, metadata !DIExpression()), !dbg !4120
  store ptr %1, ptr %output, align 8
  call void @llvm.dbg.value(metadata ptr %self, metadata !4096, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata i64 0, metadata !4099, metadata !DIExpression()), !dbg !4121
  %2 = getelementptr %"optimizing::OptimizedInterpreter<state::StackAllocatedState<65536>>", ptr %self, i64 0, i32 1, i32 1
  call void @llvm.dbg.value(metadata i64 0, metadata !4099, metadata !DIExpression()), !dbg !4121
  %_8.val1656 = load i64, ptr %2, align 8, !dbg !4122
  call void @llvm.dbg.value(metadata ptr undef, metadata !4123, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4152
  call void @llvm.dbg.value(metadata i64 %_8.val1656, metadata !4123, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4152
  call void @llvm.dbg.value(metadata i64 0, metadata !4149, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i64 0, metadata !4153, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata ptr undef, metadata !4161, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4162
  call void @llvm.dbg.value(metadata i64 %_8.val1656, metadata !4161, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4162
  %_3.i4357.not = icmp eq i64 %_8.val1656, 0, !dbg !4164
  br i1 %_3.i4357.not, label %bb43, label %bb3.lr.ph, !dbg !4165

bb3.lr.ph:                                        ; preds = %start
  %3 = getelementptr %"optimizing::OptimizedInterpreter<state::StackAllocatedState<65536>>", ptr %self, i64 0, i32 1, i32 0, i32 1
  %4 = getelementptr inbounds %"state::StackAllocatedState<65536>", ptr %self, i64 0, i32 1
  br label %bb3, !dbg !4165

bb3:                                              ; preds = %bb3.lr.ph, %bb42
  %index.058 = phi i64 [ 0, %bb3.lr.ph ], [ %34, %bb42 ]
  call void @llvm.dbg.value(metadata i64 %index.058, metadata !4099, metadata !DIExpression()), !dbg !4121
  %_8.val = load ptr, ptr %3, align 8, !dbg !4122, !nonnull !40, !noundef !40
  call void @llvm.dbg.value(metadata ptr %_8.val, metadata !4123, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4152
  call void @llvm.dbg.value(metadata ptr %_8.val, metadata !4161, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4162
  %5 = getelementptr inbounds %"optimizer::TokenOptimized", ptr %_8.val, i64 %index.058, !dbg !4164
  %token.sroa.0.0.copyload14 = load i8, ptr %5, align 4, !dbg !4166
  call void @llvm.dbg.value(metadata i8 undef, metadata !4101, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8)), !dbg !4167
  %token.sroa.4.0._5.0._93.sroa_idx = getelementptr inbounds i8, ptr %5, i64 1, !dbg !4166
  %token.sroa.4.0.copyload = load i8, ptr %token.sroa.4.0._5.0._93.sroa_idx, align 1, !dbg !4166
  call void @llvm.dbg.value(metadata i8 %token.sroa.4.0.copyload, metadata !4101, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8)), !dbg !4167
  %token.sroa.6.0._5.0._93.sroa_idx = getelementptr inbounds i8, ptr %5, i64 2, !dbg !4166
  %token.sroa.6.0.copyload = load i8, ptr %token.sroa.6.0._5.0._93.sroa_idx, align 2, !dbg !4166
  call void @llvm.dbg.value(metadata i8 %token.sroa.6.0.copyload, metadata !4101, metadata !DIExpression(DW_OP_LLVM_fragment, 16, 8)), !dbg !4167
  call void @llvm.dbg.value(metadata i8 undef, metadata !4101, metadata !DIExpression(DW_OP_LLVM_fragment, 24, 8)), !dbg !4167
  %token.sroa.810.0._5.0._93.sroa_idx = getelementptr inbounds i8, ptr %5, i64 4, !dbg !4166
  %token.sroa.810.0.copyload = load i32, ptr %token.sroa.810.0._5.0._93.sroa_idx, align 4, !dbg !4166
  call void @llvm.dbg.value(metadata i32 %token.sroa.810.0.copyload, metadata !4101, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4167
  switch i8 %token.sroa.0.0.copyload14, label %bb6 [
    i8 0, label %bb7
    i8 1, label %bb9
    i8 2, label %bb17
    i8 3, label %bb12
    i8 4, label %bb22
    i8 5, label %bb27
    i8 6, label %bb4
  ], !dbg !4168

bb43:                                             ; preds = %bb42, %start
  ret void, !dbg !4169

bb6:                                              ; preds = %bb4, %bb3
  unreachable, !dbg !4170

bb7:                                              ; preds = %bb3
  call void @llvm.dbg.value(metadata i32 %token.sroa.810.0.copyload, metadata !4103, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.value(metadata ptr %self, metadata !4172, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.value(metadata i32 %token.sroa.810.0.copyload, metadata !4180, metadata !DIExpression()), !dbg !4181
  %self1.i = load i64, ptr %4, align 8, !dbg !4183, !alias.scope !4184
  call void @llvm.dbg.value(metadata i64 %self1.i, metadata !4187, metadata !DIExpression()), !dbg !4193
  %rhs.i = sext i32 %token.sroa.810.0.copyload to i64, !dbg !4195
  call void @llvm.dbg.value(metadata i64 %rhs.i, metadata !4192, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata i64 %self1.i, metadata !4196, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata i64 %rhs.i, metadata !4199, metadata !DIExpression()), !dbg !4200
  %_3.i = add i64 %self1.i, %rhs.i, !dbg !4202
  store i64 %_3.i, ptr %4, align 8, !dbg !4203, !alias.scope !4184
  br label %bb42

bb9:                                              ; preds = %bb3
  call void @llvm.dbg.value(metadata i8 %token.sroa.4.0.copyload, metadata !4105, metadata !DIExpression()), !dbg !4204
  call void @llvm.experimental.noalias.scope.decl(metadata !4205), !dbg !4208
  call void @llvm.dbg.value(metadata ptr %self, metadata !4209, metadata !DIExpression()), !dbg !4215
  %_2.i = load i64, ptr %4, align 8, !dbg !4217, !alias.scope !4205
  %_4.i = icmp ult i64 %_2.i, 65536, !dbg !4218
  br i1 %_4.i, label %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell_mut.exit", label %panic.i, !dbg !4218, !prof !4219

panic.i:                                          ; preds = %bb9
; call core::panicking::panic_bounds_check
  call void @core::panicking::panic_bounds_check(i64 %_2.i, i64 65536, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc440) #30, !dbg !4218, !noalias !4205
  unreachable, !dbg !4218

"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell_mut.exit": ; preds = %bb9
  %6 = getelementptr inbounds [65536 x i8], ptr %self, i64 0, i64 %_2.i, !dbg !4220
  %value4 = load i8, ptr %6, align 1, !dbg !4221
  call void @llvm.dbg.value(metadata i8 %value4, metadata !4107, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i8 %value4, metadata !4223, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i8 %token.sroa.4.0.copyload, metadata !4229, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata ptr %self, metadata !4232, metadata !DIExpression()), !dbg !4238
  %_22 = add i8 %value4, %token.sroa.4.0.copyload, !dbg !4240
  store i8 %_22, ptr %6, align 1, !dbg !4241
  br label %bb42, !dbg !4242

bb17:                                             ; preds = %bb3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_37), !dbg !4243
  call void @llvm.experimental.noalias.scope.decl(metadata !4244), !dbg !4247
  call void @llvm.dbg.value(metadata ptr %self, metadata !4248, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata ptr %self, metadata !4259, metadata !DIExpression()), !dbg !4278
  %_7.i = load i64, ptr %4, align 8, !dbg !4280, !alias.scope !4244
  %_8.i = add i64 %_7.i, 1, !dbg !4281
  call void @llvm.dbg.value(metadata i64 %_7.i, metadata !4275, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4278
  call void @llvm.dbg.value(metadata i64 %_8.i, metadata !4275, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4278
  call void @llvm.dbg.value(metadata ptr %self, metadata !4282, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4289
  call void @llvm.dbg.value(metadata i64 65536, metadata !4282, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4289
  call void @llvm.dbg.value(metadata i64 %_7.i, metadata !4288, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4289
  call void @llvm.dbg.value(metadata i64 %_8.i, metadata !4288, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4289
  call void @llvm.dbg.value(metadata i64 %_7.i, metadata !4291, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4298
  call void @llvm.dbg.value(metadata i64 %_8.i, metadata !4291, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4298
  call void @llvm.dbg.value(metadata ptr %self, metadata !4297, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4298
  call void @llvm.dbg.value(metadata i64 65536, metadata !4297, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4298
  %_4.i.i.i = icmp eq i64 %_7.i, -1, !dbg !4300
  br i1 %_4.i.i.i, label %bb1.i.i.i, label %bb2.i.i.i, !dbg !4300

bb2.i.i.i:                                        ; preds = %bb17
  %_10.i.i.i = icmp ugt i64 %_8.i, 65536, !dbg !4301
  br i1 %_10.i.i.i, label %bb3.i.i.i, label %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell_mut_slice.exit", !dbg !4301

bb1.i.i.i:                                        ; preds = %bb17
; call core::slice::index::slice_index_order_fail
  call void @core::slice::index::slice_index_order_fail(i64 -1, i64 %_8.i, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc446) #30, !dbg !4302, !noalias !4303
  unreachable, !dbg !4302

bb3.i.i.i:                                        ; preds = %bb2.i.i.i
; call core::slice::index::slice_end_index_len_fail
  call void @core::slice::index::slice_end_index_len_fail(i64 %_8.i, i64 65536, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc446) #30, !dbg !4308, !noalias !4303
  unreachable, !dbg !4308

"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell_mut_slice.exit": ; preds = %bb2.i.i.i
  call void @llvm.dbg.value(metadata i64 %_7.i, metadata !4309, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4321
  call void @llvm.dbg.value(metadata i64 %_8.i, metadata !4309, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4321
  call void @llvm.dbg.value(metadata ptr %self, metadata !4318, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4321
  call void @llvm.dbg.value(metadata i64 poison, metadata !4318, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4321
  call void @llvm.dbg.value(metadata ptr %self, metadata !4323, metadata !DIExpression()), !dbg !4327
  call void @llvm.dbg.value(metadata i64 %_7.i, metadata !4326, metadata !DIExpression()), !dbg !4327
  call void @llvm.dbg.value(metadata ptr %self, metadata !4329, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 %_7.i, metadata !4332, metadata !DIExpression()), !dbg !4333
  %7 = getelementptr inbounds i8, ptr %self, i64 %_7.i, !dbg !4335
; call <std::io::stdio::Stdin as std::io::Read>::read
  call void @"<std::io::stdio::Stdin as std::io::Read>::read"(ptr noalias nocapture noundef nonnull sret(%"core::result::Result<usize, std::io::error::Error>") dereferenceable(16) %_37, ptr noalias noundef nonnull align 8 dereferenceable(8) %input, ptr noalias noundef nonnull align 1 %7, i64 1), !dbg !4243
  %_37.val = load i64, ptr %_37, align 8, !dbg !4243, !range !3223, !noundef !40
  call void @llvm.dbg.declare(metadata ptr undef, metadata !4336, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.declare(metadata ptr undef, metadata !4373, metadata !DIExpression()), !dbg !4383
  %trunc.not.i = icmp eq i64 %_37.val, 0, !dbg !4384
  br i1 %trunc.not.i, label %"core::result::Result<T,E>::map_err.exit", label %bb1.i, !dbg !4384

bb1.i:                                            ; preds = %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell_mut_slice.exit"
  %8 = getelementptr inbounds i8, ptr %_37, i64 8, !dbg !4243
  %_37.val17 = load ptr, ptr %8, align 8, !dbg !4243, !nonnull !40
  call void @llvm.dbg.value(metadata ptr %_37.val17, metadata !4376, metadata !DIExpression()), !dbg !4385
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_2.i.i), !dbg !4386
  call void @llvm.dbg.value(metadata ptr %_37.val17, metadata !4392, metadata !DIExpression()), !dbg !4386
  store ptr %_37.val17, ptr %_2.i.i, align 8
  call void @llvm.dbg.declare(metadata ptr undef, metadata !4391, metadata !DIExpression()), !dbg !4394
; invoke std::process::exit
  invoke void @std::process::exit(i32 0) #30
          to label %unreachable.i.i unwind label %cleanup.i.i, !dbg !4395

cleanup.i.i:                                      ; preds = %bb1.i
  %9 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<std::io::error::Error>
  invoke void @"core::ptr::drop_in_place<std::io::error::Error>"(ptr nonnull %_2.i.i) #28
          to label %common.resume unwind label %abort.i.i, !dbg !4396

unreachable.i.i:                                  ; preds = %bb1.i
  unreachable

abort.i.i:                                        ; preds = %cleanup.i.i
  %10 = landingpad { ptr, i32 }
          cleanup, !dbg !4394
; call core::panicking::panic_cannot_unwind
  call void @core::panicking::panic_cannot_unwind() #29, !dbg !4394
  unreachable, !dbg !4394

common.resume:                                    ; preds = %cleanup.i.i47, %cleanup.i.i
  %common.resume.op = phi { ptr, i32 } [ %9, %cleanup.i.i ], [ %13, %cleanup.i.i47 ]
  resume { ptr, i32 } %common.resume.op, !dbg !4167

"core::result::Result<T,E>::map_err.exit": ; preds = %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell_mut_slice.exit"
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_37), !dbg !4397
  br label %bb42

bb12:                                             ; preds = %bb3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_29), !dbg !4398
  call void @llvm.experimental.noalias.scope.decl(metadata !4399), !dbg !4402
  call void @llvm.dbg.value(metadata ptr %self, metadata !4403, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.value(metadata ptr %self, metadata !4414, metadata !DIExpression()), !dbg !4422
  %_5.i = load i64, ptr %4, align 8, !dbg !4424, !alias.scope !4399
  %_6.i22 = add i64 %_5.i, 1, !dbg !4425
  call void @llvm.dbg.value(metadata i64 %_5.i, metadata !4421, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4422
  call void @llvm.dbg.value(metadata i64 %_6.i22, metadata !4421, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4422
  call void @llvm.dbg.value(metadata ptr %self, metadata !4426, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4433
  call void @llvm.dbg.value(metadata i64 65536, metadata !4426, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4433
  call void @llvm.dbg.value(metadata i64 %_5.i, metadata !4432, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4433
  call void @llvm.dbg.value(metadata i64 %_6.i22, metadata !4432, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4433
  call void @llvm.dbg.value(metadata i64 %_5.i, metadata !4435, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4441
  call void @llvm.dbg.value(metadata i64 %_6.i22, metadata !4435, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4441
  call void @llvm.dbg.value(metadata ptr %self, metadata !4440, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4441
  call void @llvm.dbg.value(metadata i64 65536, metadata !4440, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4441
  %_3.i.i.i = icmp eq i64 %_5.i, -1, !dbg !4443
  br i1 %_3.i.i.i, label %bb1.i.i.i24, label %bb2.i.i.i23, !dbg !4443

bb2.i.i.i23:                                      ; preds = %bb12
  %_9.i.i.i = icmp ugt i64 %_6.i22, 65536, !dbg !4444
  br i1 %_9.i.i.i, label %bb3.i.i.i25, label %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell_slice.exit", !dbg !4444

bb1.i.i.i24:                                      ; preds = %bb12
; call core::slice::index::slice_index_order_fail
  call void @core::slice::index::slice_index_order_fail(i64 -1, i64 %_6.i22, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc444) #30, !dbg !4445, !noalias !4446
  unreachable, !dbg !4445

bb3.i.i.i25:                                      ; preds = %bb2.i.i.i23
; call core::slice::index::slice_end_index_len_fail
  call void @core::slice::index::slice_end_index_len_fail(i64 %_6.i22, i64 65536, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc444) #30, !dbg !4451, !noalias !4446
  unreachable, !dbg !4451

"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell_slice.exit": ; preds = %bb2.i.i.i23
  call void @llvm.dbg.value(metadata i64 %_5.i, metadata !4452, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4460
  call void @llvm.dbg.value(metadata i64 %_6.i22, metadata !4452, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4460
  call void @llvm.dbg.value(metadata ptr %self, metadata !4457, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4460
  call void @llvm.dbg.value(metadata i64 poison, metadata !4457, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4460
  call void @llvm.dbg.value(metadata ptr %self, metadata !4462, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i64 %_5.i, metadata !4467, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata ptr %self, metadata !4470, metadata !DIExpression()), !dbg !4476
  call void @llvm.dbg.value(metadata i64 %_5.i, metadata !4475, metadata !DIExpression()), !dbg !4476
  %11 = getelementptr inbounds i8, ptr %self, i64 %_5.i, !dbg !4478
; call <std::io::stdio::Stdout as std::io::Write>::write
  call void @"<std::io::stdio::Stdout as std::io::Write>::write"(ptr noalias nocapture noundef nonnull sret(%"core::result::Result<usize, std::io::error::Error>") dereferenceable(16) %_29, ptr noalias noundef nonnull align 8 dereferenceable(8) %output, ptr noalias noundef nonnull readonly align 1 %11, i64 1), !dbg !4398
  %_29.val = load i64, ptr %_29, align 8, !dbg !4398, !range !3223, !noundef !40
  call void @llvm.dbg.declare(metadata ptr undef, metadata !4479, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.declare(metadata ptr undef, metadata !4485, metadata !DIExpression()), !dbg !4494
  %trunc.not.i45 = icmp eq i64 %_29.val, 0, !dbg !4495
  br i1 %trunc.not.i45, label %"core::result::Result<T,E>::map_err.exit", label %bb1.i46, !dbg !4495

bb1.i46:                                          ; preds = %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell_slice.exit"
  %12 = getelementptr inbounds i8, ptr %_29, i64 8, !dbg !4398
  %_29.val18 = load ptr, ptr %12, align 8, !dbg !4398, !nonnull !40
  call void @llvm.dbg.value(metadata ptr %_29.val18, metadata !4488, metadata !DIExpression()), !dbg !4496
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_2.i.i44), !dbg !4497
  call void @llvm.dbg.value(metadata ptr %_29.val18, metadata !4503, metadata !DIExpression()), !dbg !4497
  store ptr %_29.val18, ptr %_2.i.i44, align 8
  call void @llvm.dbg.declare(metadata ptr undef, metadata !4502, metadata !DIExpression()), !dbg !4505
; invoke std::process::exit
  invoke void @std::process::exit(i32 0) #30
          to label %unreachable.i.i48 unwind label %cleanup.i.i47, !dbg !4506

cleanup.i.i47:                                    ; preds = %bb1.i46
  %13 = landingpad { ptr, i32 }
          cleanup
; invoke core::ptr::drop_in_place<std::io::error::Error>
  invoke void @"core::ptr::drop_in_place<std::io::error::Error>"(ptr nonnull %_2.i.i44) #28
          to label %common.resume unwind label %abort.i.i49, !dbg !4507

unreachable.i.i48:                                ; preds = %bb1.i46
  unreachable

abort.i.i49:                                      ; preds = %cleanup.i.i47
  %14 = landingpad { ptr, i32 }
          cleanup, !dbg !4505
; call core::panicking::panic_cannot_unwind
  call void @core::panicking::panic_cannot_unwind() #29, !dbg !4505
  unreachable, !dbg !4505

"core::result::Result<T,E>::map_err.exit": ; preds = %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell_slice.exit"
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_29), !dbg !4508
  br label %bb42

bb22:                                             ; preds = %bb3
  call void @llvm.dbg.value(metadata i32 %token.sroa.810.0.copyload, metadata !4109, metadata !DIExpression()), !dbg !4509
  call void @llvm.experimental.noalias.scope.decl(metadata !4510), !dbg !4513
  call void @llvm.dbg.value(metadata ptr %self, metadata !4209, metadata !DIExpression()), !dbg !4514
  %_2.i26 = load i64, ptr %4, align 8, !dbg !4516, !alias.scope !4510
  %_4.i27 = icmp ult i64 %_2.i26, 65536, !dbg !4517
  br i1 %_4.i27, label %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell.exit29", label %panic.i28, !dbg !4517, !prof !4219

panic.i28:                                        ; preds = %bb22
; call core::panicking::panic_bounds_check
  call void @core::panicking::panic_bounds_check(i64 %_2.i26, i64 65536, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc440) #30, !dbg !4517, !noalias !4510
  unreachable, !dbg !4517

"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell.exit29": ; preds = %bb22
  %15 = getelementptr inbounds [65536 x i8], ptr %self, i64 0, i64 %_2.i26, !dbg !4518
  %_44 = load i8, ptr %15, align 1, !dbg !4519
  %16 = icmp eq i8 %_44, 0, !dbg !4519
  %17 = zext i32 %token.sroa.810.0.copyload to i64
  %spec.select = select i1 %16, i64 %17, i64 %index.058, !dbg !4519
  br label %bb42, !dbg !4519

bb27:                                             ; preds = %bb3
  call void @llvm.dbg.value(metadata i32 %token.sroa.810.0.copyload, metadata !4111, metadata !DIExpression()), !dbg !4520
  call void @llvm.experimental.noalias.scope.decl(metadata !4521), !dbg !4524
  call void @llvm.dbg.value(metadata ptr %self, metadata !4209, metadata !DIExpression()), !dbg !4525
  %_2.i30 = load i64, ptr %4, align 8, !dbg !4527, !alias.scope !4521
  %_4.i31 = icmp ult i64 %_2.i30, 65536, !dbg !4528
  br i1 %_4.i31, label %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell.exit33", label %panic.i32, !dbg !4528, !prof !4219

panic.i32:                                        ; preds = %bb27
; call core::panicking::panic_bounds_check
  call void @core::panicking::panic_bounds_check(i64 %_2.i30, i64 65536, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc440) #30, !dbg !4528, !noalias !4521
  unreachable, !dbg !4528

"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell.exit33": ; preds = %bb27
  %18 = getelementptr inbounds [65536 x i8], ptr %self, i64 0, i64 %_2.i30, !dbg !4529
  %_49 = load i8, ptr %18, align 1, !dbg !4530
  %19 = icmp eq i8 %_49, 0, !dbg !4530
  %20 = zext i32 %token.sroa.810.0.copyload to i64
  %spec.select15 = select i1 %19, i64 %index.058, i64 %20, !dbg !4530
  br label %bb42, !dbg !4530

bb4:                                              ; preds = %bb3
  switch i8 %token.sroa.4.0.copyload, label %bb6 [
    i8 0, label %bb5
    i8 1, label %bb32
    i8 2, label %bb34
    i8 3, label %bb36
  ], !dbg !4168

bb5:                                              ; preds = %bb4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_80), !dbg !4531
  call void @llvm.dbg.value(metadata ptr @alloc103, metadata !887, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4532
  call void @llvm.dbg.value(metadata i64 1, metadata !887, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4532
  call void @llvm.dbg.value(metadata ptr @alloc10, metadata !993, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4532
  call void @llvm.dbg.value(metadata i64 0, metadata !993, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4532
  %21 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_80, i64 0, i32 1, !dbg !4534
  store ptr @alloc103, ptr %21, align 8, !dbg !4534, !alias.scope !4535, !noalias !4538
  %22 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_80, i64 0, i32 1, i32 1, !dbg !4534
  store i64 1, ptr %22, align 8, !dbg !4534, !alias.scope !4535, !noalias !4538
  store ptr null, ptr %_80, align 8, !dbg !4534, !alias.scope !4535, !noalias !4538
  %23 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_80, i64 0, i32 2, !dbg !4534
  store ptr @alloc10, ptr %23, align 8, !dbg !4534, !alias.scope !4535, !noalias !4538
  %24 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_80, i64 0, i32 2, i32 1, !dbg !4534
  store i64 0, ptr %24, align 8, !dbg !4534, !alias.scope !4535, !noalias !4538
; call core::panicking::panic_fmt
  call void @core::panicking::panic_fmt(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_80, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc424) #30, !dbg !4531
  unreachable

bb32:                                             ; preds = %bb4
  call void @llvm.dbg.value(metadata i8 %token.sroa.6.0.copyload, metadata !4113, metadata !DIExpression()), !dbg !4541
  call void @llvm.experimental.noalias.scope.decl(metadata !4542), !dbg !4545
  call void @llvm.dbg.value(metadata ptr %self, metadata !4232, metadata !DIExpression()), !dbg !4546
  %_4.i34 = load i64, ptr %4, align 8, !dbg !4548, !alias.scope !4542
  %_6.i35 = icmp ult i64 %_4.i34, 65536, !dbg !4549
  br i1 %_6.i35, label %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell_mut.exit38", label %panic.i37, !dbg !4549, !prof !4219

panic.i37:                                        ; preds = %bb32
; call core::panicking::panic_bounds_check
  call void @core::panicking::panic_bounds_check(i64 %_4.i34, i64 65536, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc442) #30, !dbg !4549, !noalias !4542
  unreachable, !dbg !4549

"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell_mut.exit38": ; preds = %bb32
  %_3.i36 = getelementptr inbounds [65536 x i8], ptr %self, i64 0, i64 %_4.i34, !dbg !4550
  store i8 %token.sroa.6.0.copyload, ptr %_3.i36, align 1, !dbg !4551
  br label %bb42, !dbg !4552

bb34:                                             ; preds = %bb4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_58), !dbg !4553
  call void @llvm.dbg.value(metadata ptr @alloc108, metadata !887, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4554
  call void @llvm.dbg.value(metadata i64 1, metadata !887, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4554
  call void @llvm.dbg.value(metadata ptr @alloc10, metadata !993, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4554
  call void @llvm.dbg.value(metadata i64 0, metadata !993, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4554
  %25 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_58, i64 0, i32 1, !dbg !4556
  store ptr @alloc108, ptr %25, align 8, !dbg !4556, !alias.scope !4557, !noalias !4560
  %26 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_58, i64 0, i32 1, i32 1, !dbg !4556
  store i64 1, ptr %26, align 8, !dbg !4556, !alias.scope !4557, !noalias !4560
  store ptr null, ptr %_58, align 8, !dbg !4556, !alias.scope !4557, !noalias !4560
  %27 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_58, i64 0, i32 2, !dbg !4556
  store ptr @alloc10, ptr %27, align 8, !dbg !4556, !alias.scope !4557, !noalias !4560
  %28 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_58, i64 0, i32 2, i32 1, !dbg !4556
  store i64 0, ptr %28, align 8, !dbg !4556, !alias.scope !4557, !noalias !4560
; call core::panicking::panic_fmt
  call void @core::panicking::panic_fmt(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_58, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc422) #30, !dbg !4553
  unreachable

bb36:                                             ; preds = %bb4
  call void @llvm.dbg.value(metadata i8 %token.sroa.6.0.copyload, metadata !4115, metadata !DIExpression()), !dbg !4563
  call void @llvm.experimental.noalias.scope.decl(metadata !4564), !dbg !4567
  call void @llvm.dbg.value(metadata ptr %self, metadata !4209, metadata !DIExpression()), !dbg !4568
  %_2.i39 = load i64, ptr %4, align 8, !dbg !4570, !alias.scope !4564
  %_4.i40 = icmp ult i64 %_2.i39, 65536, !dbg !4571
  br i1 %_4.i40, label %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell.exit42", label %panic.i41, !dbg !4571, !prof !4219

panic.i41:                                        ; preds = %bb36
; call core::panicking::panic_bounds_check
  call void @core::panicking::panic_bounds_check(i64 %_2.i39, i64 65536, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc440) #30, !dbg !4571, !noalias !4564
  unreachable, !dbg !4571

"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell.exit42": ; preds = %bb36
  %29 = getelementptr inbounds [65536 x i8], ptr %self, i64 0, i64 %_2.i39, !dbg !4572
  %_67 = load i8, ptr %29, align 1, !dbg !4573
  %_66.not = icmp eq i8 %_67, %token.sroa.6.0.copyload, !dbg !4573
  br i1 %_66.not, label %bb42, label %bb38, !dbg !4573

bb38:                                             ; preds = %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell.exit42"
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %_72), !dbg !4574
  call void @llvm.dbg.value(metadata ptr @alloc113, metadata !887, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4575
  call void @llvm.dbg.value(metadata i64 1, metadata !887, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4575
  call void @llvm.dbg.value(metadata ptr @alloc10, metadata !993, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4575
  call void @llvm.dbg.value(metadata i64 0, metadata !993, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4575
  %30 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_72, i64 0, i32 1, !dbg !4577
  store ptr @alloc113, ptr %30, align 8, !dbg !4577, !alias.scope !4578, !noalias !4581
  %31 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_72, i64 0, i32 1, i32 1, !dbg !4577
  store i64 1, ptr %31, align 8, !dbg !4577, !alias.scope !4578, !noalias !4581
  store ptr null, ptr %_72, align 8, !dbg !4577, !alias.scope !4578, !noalias !4581
  %32 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_72, i64 0, i32 2, !dbg !4577
  store ptr @alloc10, ptr %32, align 8, !dbg !4577, !alias.scope !4578, !noalias !4581
  %33 = getelementptr inbounds %"core::fmt::Arguments<'_>", ptr %_72, i64 0, i32 2, i32 1, !dbg !4577
  store i64 0, ptr %33, align 8, !dbg !4577, !alias.scope !4578, !noalias !4581
; call core::panicking::panic_fmt
  call void @core::panicking::panic_fmt(ptr noalias nocapture noundef nonnull readonly dereferenceable(48) %_72, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) @alloc420) #30, !dbg !4574
  unreachable

bb42:                                             ; preds = %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell.exit33", %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell.exit29", %bb7, %"core::result::Result<T,E>::map_err.exit", %"core::result::Result<T,E>::map_err.exit", %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell.exit42", %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell_mut.exit", %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell_mut.exit38"
  %index.1 = phi i64 [ %index.058, %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell.exit42" ], [ %index.058, %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell_mut.exit38" ], [ %index.058, %"core::result::Result<T,E>::map_err.exit" ], [ %index.058, %"core::result::Result<T,E>::map_err.exit" ], [ %index.058, %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell_mut.exit" ], [ %index.058, %bb7 ], [ %spec.select15, %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell.exit33" ], [ %spec.select, %"<bf_rs::state::StackAllocatedState<_> as bf_rs::BFState>::cell.exit29" ], !dbg !4120
  call void @llvm.dbg.value(metadata i64 %index.1, metadata !4099, metadata !DIExpression()), !dbg !4121
  %34 = add nuw i64 %index.1, 1, !dbg !4584
  call void @llvm.dbg.value(metadata i64 %34, metadata !4099, metadata !DIExpression()), !dbg !4121
  %_8.val16 = load i64, ptr %2, align 8, !dbg !4122
  call void @llvm.dbg.value(metadata ptr undef, metadata !4123, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4152
  call void @llvm.dbg.value(metadata i64 %_8.val16, metadata !4123, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4152
  call void @llvm.dbg.value(metadata i64 %34, metadata !4149, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i64 %34, metadata !4153, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.value(metadata ptr undef, metadata !4161, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4162
  call void @llvm.dbg.value(metadata i64 %_8.val16, metadata !4161, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4162
  %_3.i43 = icmp ult i64 %34, %_8.val16, !dbg !4164
  br i1 %_3.i43, label %bb3, label %bb43, !dbg !4165
}

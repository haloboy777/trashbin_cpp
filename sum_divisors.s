	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 14, 0
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	add	x8, sp, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x0, #1
	mov	x1, #250
	bl	__ZL11listSquaredxx
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	stur	wzr, [x29, #-4]
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEED1B7v160006Ev
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZL11listSquaredxx
__ZL11listSquaredxx:                    ; @_ZL11listSquaredxx
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	mov	x9, x0
	stur	x9, [x29, #-8]
	stur	x8, [x29, #-16]
	stur	x1, [x29, #-24]
	mov	w8, #0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-25]
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEEC1B7v160006Ev
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-40]
	b	LBB1_1
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	cset	w8, gt
	tbnz	w8, #0, LBB1_9
	b	LBB1_2
LBB1_2:                                 ;   in Loop: Header=BB1_1 Depth=1
	ldur	x0, [x29, #-40]
Ltmp0:
	bl	__ZL11allDivisorsx
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp1:
	b	LBB1_3
LBB1_3:                                 ;   in Loop: Header=BB1_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-48]
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-40]
	mul	x8, x8, x9
	ldur	x9, [x29, #-48]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB1_7
	b	LBB1_4
LBB1_4:                                 ;   in Loop: Header=BB1_1 Depth=1
	add	x0, sp, #32
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	sub	x1, x29, #40
	sub	x2, x29, #48
	bl	__ZNSt3__14pairIxxEC1B7v160006IRxS3_LPv0EEEOT_OT0_
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
Ltmp2:
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9push_backB7v160006ERKS2_
Ltmp3:
	b	LBB1_5
LBB1_5:                                 ;   in Loop: Header=BB1_1 Depth=1
	b	LBB1_7
LBB1_6:
Ltmp4:
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #56]
	mov	x8, x1
	str	w8, [sp, #52]
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEED1B7v160006Ev
	b	LBB1_12
LBB1_7:                                 ;   in Loop: Header=BB1_1 Depth=1
	b	LBB1_8
LBB1_8:                                 ;   in Loop: Header=BB1_1 Depth=1
	ldur	x8, [x29, #-40]
	add	x8, x8, #1
	stur	x8, [x29, #-40]
	b	LBB1_1
LBB1_9:
	mov	w8, #1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-25]
	ldurb	w8, [x29, #-25]
	tbnz	w8, #0, LBB1_11
	b	LBB1_10
LBB1_10:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEED1B7v160006Ev
	b	LBB1_11
LBB1_11:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB1_12:
	ldr	x0, [sp, #56]
	bl	__Unwind_Resume
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table1:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 1 <<
	.uleb128 Ltmp3-Ltmp0                    ;   Call between Ltmp0 and Ltmp3
	.uleb128 Ltmp4-Lfunc_begin0             ;     jumps to Ltmp4
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Lfunc_end0-Ltmp3               ;   Call between Ltmp3 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEED1B7v160006Ev ; -- Begin function _ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEED1B7v160006Ev
	.globl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEED1B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEED1B7v160006Ev
	.p2align	2
__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEED1B7v160006Ev: ; @_ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEED1B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEED2B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEEC1B7v160006Ev ; -- Begin function _ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEEC1B7v160006Ev
	.globl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEEC1B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEEC1B7v160006Ev
	.p2align	2
__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEEC1B7v160006Ev: ; @_ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEEC1B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEEC2B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZL11allDivisorsx
__ZL11allDivisorsx:                     ; @_ZL11allDivisorsx
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	xzr, [sp, #16]
	mov	x8, #1
	str	x8, [sp, #8]
	b	LBB4_1
LBB4_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	cset	w8, gt
	tbnz	w8, #0, LBB4_6
	b	LBB4_2
LBB4_2:                                 ;   in Loop: Header=BB4_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x10, [sp, #8]
	sdiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB4_4
	b	LBB4_3
LBB4_3:                                 ;   in Loop: Header=BB4_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #8]
	mul	x9, x8, x9
	ldr	x8, [sp, #16]
	add	x8, x8, x9
	str	x8, [sp, #16]
	b	LBB4_4
LBB4_4:                                 ;   in Loop: Header=BB4_1 Depth=1
	b	LBB4_5
LBB4_5:                                 ;   in Loop: Header=BB4_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	LBB4_1
LBB4_6:
	ldr	x0, [sp, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIxxEC1B7v160006IRxS3_LPv0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIxxEC1B7v160006IRxS3_LPv0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIxxEC1B7v160006IRxS3_LPv0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIxxEC1B7v160006IRxS3_LPv0EEEOT_OT0_: ; @_ZNSt3__14pairIxxEC1B7v160006IRxS3_LPv0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairIxxEC2B7v160006IRxS3_LPv0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9push_backB7v160006ERKS2_ ; -- Begin function _ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9push_backB7v160006ERKS2_
	.globl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9push_backB7v160006ERKS2_
	.weak_definition	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9push_backB7v160006ERKS2_
	.p2align	2
__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9push_backB7v160006ERKS2_: ; @_ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9push_backB7v160006ERKS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x0, #8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9__end_capB7v160006Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x0]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB6_2
	b	LBB6_1
LBB6_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE22__construct_one_at_endB7v160006IJRKS2_EEEvDpOT_
	b	LBB6_3
LBB6_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_
	b	LBB6_3
LBB6_3:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEEC2B7v160006Ev ; -- Begin function _ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEEC2B7v160006Ev
	.globl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEEC2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEEC2B7v160006Ev
	.p2align	2
__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEEC2B7v160006Ev: ; @_ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEEC2B7v160006Ev
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	add	x1, sp, #16
	str	xzr, [sp, #16]
Ltmp6:
	add	x0, x8, #16
	add	x2, sp, #15
	bl	__ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEEC1B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
Ltmp7:
	b	LBB7_1
LBB7_1:
Ltmp8:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__119__debug_db_insert_cB7v160006INS_6vectorINS_4pairIxxEENS_9allocatorIS3_EEEEEEvPT_
Ltmp9:
	b	LBB7_2
LBB7_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB7_3:
Ltmp10:
	bl	___clang_call_terminate
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table7:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp6-Lfunc_begin1             ; >> Call Site 1 <<
	.uleb128 Ltmp9-Ltmp6                    ;   Call between Ltmp6 and Ltmp9
	.uleb128 Ltmp10-Lfunc_begin1            ;     jumps to Ltmp10
	.byte	1                               ;   On action: 1
Lcst_end1:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEEC1B7v160006IDnNS_18__default_init_tagEEEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEEC1B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEEC1B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEEC1B7v160006IDnNS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEEC1B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEEC2B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
                                        ; -- End function
	.private_extern	__ZNSt3__119__debug_db_insert_cB7v160006INS_6vectorINS_4pairIxxEENS_9allocatorIS3_EEEEEEvPT_ ; -- Begin function _ZNSt3__119__debug_db_insert_cB7v160006INS_6vectorINS_4pairIxxEENS_9allocatorIS3_EEEEEEvPT_
	.globl	__ZNSt3__119__debug_db_insert_cB7v160006INS_6vectorINS_4pairIxxEENS_9allocatorIS3_EEEEEEvPT_
	.weak_definition	__ZNSt3__119__debug_db_insert_cB7v160006INS_6vectorINS_4pairIxxEENS_9allocatorIS3_EEEEEEvPT_
	.p2align	2
__ZNSt3__119__debug_db_insert_cB7v160006INS_6vectorINS_4pairIxxEENS_9allocatorIS3_EEEEEEvPT_: ; @_ZNSt3__119__debug_db_insert_cB7v160006INS_6vectorINS_4pairIxxEENS_9allocatorIS3_EEEEEEvPT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEEC2B7v160006IDnNS_18__default_init_tagEEEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEEC2B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEEC2B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEEC2B7v160006IDnNS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEEC2B7v160006IDnNS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EEC2B7v160006IDnvEEOT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorINS_4pairIxxEEEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EEC2B7v160006IDnvEEOT_ ; -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EEC2B7v160006IDnvEEOT_
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EEC2B7v160006IDnvEEOT_
	.p2align	2
__ZNSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EEC2B7v160006IDnvEEOT_: ; @_ZNSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EEC2B7v160006IDnvEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_9allocatorINS_4pairIxxEEEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorINS_4pairIxxEEEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorINS_4pairIxxEEEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_9allocatorINS_4pairIxxEEEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorINS_4pairIxxEEEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_4pairIxxEEEELi1ELb1EEC2B7v160006ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorINS_4pairIxxEEEC2B7v160006Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorINS_4pairIxxEEEC2B7v160006Ev ; -- Begin function _ZNSt3__19allocatorINS_4pairIxxEEEC2B7v160006Ev
	.globl	__ZNSt3__19allocatorINS_4pairIxxEEEC2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorINS_4pairIxxEEEC2B7v160006Ev
	.p2align	2
__ZNSt3__19allocatorINS_4pairIxxEEEC2B7v160006Ev: ; @_ZNSt3__19allocatorINS_4pairIxxEEEC2B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_4pairIxxEEEEEC2B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_4pairIxxEEEEEC2B7v160006Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_4pairIxxEEEEEC2B7v160006Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_4pairIxxEEEEEC2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_4pairIxxEEEEEC2B7v160006Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_4pairIxxEEEEEC2B7v160006Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorINS_4pairIxxEEEEEC2B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIxxEC2B7v160006IRxS3_LPv0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIxxEC2B7v160006IRxS3_LPv0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIxxEC2B7v160006IRxS3_LPv0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIxxEC2B7v160006IRxS3_LPv0EEEOT_OT0_: ; @_ZNSt3__14pairIxxEC2B7v160006IRxS3_LPv0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9__end_capB7v160006Ev ; -- Begin function _ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9__end_capB7v160006Ev
	.globl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9__end_capB7v160006Ev
	.weak_definition	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9__end_capB7v160006Ev
	.p2align	2
__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9__end_capB7v160006Ev: ; @_ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9__end_capB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #16
	bl	__ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE5firstB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE22__construct_one_at_endB7v160006IJRKS2_EEEvDpOT_ ; -- Begin function _ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE22__construct_one_at_endB7v160006IJRKS2_EEEvDpOT_
	.weak_definition	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE22__construct_one_at_endB7v160006IJRKS2_EEEvDpOT_
	.p2align	2
__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE22__construct_one_at_endB7v160006IJRKS2_EEEvDpOT_: ; @_ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE22__construct_one_at_endB7v160006IJRKS2_EEEvDpOT_
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	add	x0, sp, #40
	mov	x2, #1
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionC1B7v160006ERS5_m
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__allocB7v160006Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x0, [sp, #48]
	bl	__ZNSt3__112__to_addressB7v160006INS_4pairIxxEEEEPT_S4_
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x2, [x29, #-16]
Ltmp15:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE9constructB7v160006IS3_JRKS3_EvEEvRS4_PT_DpOT0_
Ltmp16:
	b	LBB18_1
LBB18_1:
	add	x0, sp, #40
	ldr	x8, [sp, #48]
	add	x8, x8, #16
	str	x8, [sp, #48]
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionD1B7v160006Ev
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB18_2:
Ltmp17:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionD1B7v160006Ev
	b	LBB18_3
LBB18_3:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table18:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp15-Lfunc_begin2            ;   Call between Lfunc_begin2 and Ltmp15
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp15-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp16-Ltmp15                  ;   Call between Ltmp15 and Ltmp16
	.uleb128 Ltmp17-Lfunc_begin2            ;     jumps to Ltmp17
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp16              ;   Call between Ltmp16 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_ ; -- Begin function _ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_
	.weak_definition	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_
	.p2align	2
__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_: ; @_ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEvOT_
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__allocB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	stur	x8, [x29, #-24]
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4sizeB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE11__recommendB7v160006Em
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4sizeB7v160006Ev
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	mov	x2, x0
	ldur	x3, [x29, #-24]
	add	x0, sp, #48
	bl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEEC1EmmS5_
	ldur	x8, [x29, #-24]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldr	x0, [sp, #64]
	bl	__ZNSt3__112__to_addressB7v160006INS_4pairIxxEEEEPT_S4_
	mov	x1, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x2, [x29, #-16]
Ltmp18:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE9constructB7v160006IS3_JRKS3_EvEEvRS4_PT_DpOT0_
Ltmp19:
	b	LBB19_1
LBB19_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #48
	ldr	x8, [sp, #64]
	add	x8, x8, #16
	str	x8, [sp, #64]
Ltmp20:
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE
Ltmp21:
	b	LBB19_2
LBB19_2:
	add	x0, sp, #48
	bl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEED1Ev
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB19_3:
Ltmp22:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	add	x0, sp, #48
	bl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEED1Ev
	b	LBB19_4
LBB19_4:
	ldr	x0, [sp, #40]
	bl	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table19:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp18-Lfunc_begin3            ;   Call between Lfunc_begin3 and Ltmp18
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp18-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp21-Ltmp18                  ;   Call between Ltmp18 and Ltmp21
	.uleb128 Ltmp22-Lfunc_begin3            ;     jumps to Ltmp22
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp21-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp21              ;   Call between Ltmp21 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE5firstB7v160006Ev ; -- Begin function _ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE5firstB7v160006Ev
	.globl	__ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE5firstB7v160006Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE5firstB7v160006Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE5firstB7v160006Ev: ; @_ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE5firstB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EE5__getB7v160006Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EE5__getB7v160006Ev
	.globl	__ZNSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EE5__getB7v160006Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EE5__getB7v160006Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EE5__getB7v160006Ev: ; @_ZNSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionC1B7v160006ERS5_m ; -- Begin function _ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionC1B7v160006ERS5_m
	.globl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionC1B7v160006ERS5_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionC1B7v160006ERS5_m
	.p2align	2
__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionC1B7v160006ERS5_m: ; @_ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionC1B7v160006ERS5_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionC2B7v160006ERS5_m
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE9constructB7v160006IS3_JRKS3_EvEEvRS4_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE9constructB7v160006IS3_JRKS3_EvEEvRS4_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE9constructB7v160006IS3_JRKS3_EvEEvRS4_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE9constructB7v160006IS3_JRKS3_EvEEvRS4_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE9constructB7v160006IS3_JRKS3_EvEEvRS4_PT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorINS_4pairIxxEEE9constructB7v160006IS2_JRKS2_EEEvPT_DpOT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__allocB7v160006Ev ; -- Begin function _ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__allocB7v160006Ev
	.globl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__allocB7v160006Ev
	.weak_definition	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__allocB7v160006Ev
	.p2align	2
__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__allocB7v160006Ev: ; @_ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__allocB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #16
	bl	__ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE6secondB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB7v160006INS_4pairIxxEEEEPT_S4_ ; -- Begin function _ZNSt3__112__to_addressB7v160006INS_4pairIxxEEEEPT_S4_
	.globl	__ZNSt3__112__to_addressB7v160006INS_4pairIxxEEEEPT_S4_
	.weak_definition	__ZNSt3__112__to_addressB7v160006INS_4pairIxxEEEEPT_S4_
	.p2align	2
__ZNSt3__112__to_addressB7v160006INS_4pairIxxEEEEPT_S4_: ; @_ZNSt3__112__to_addressB7v160006INS_4pairIxxEEEEPT_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionD1B7v160006Ev ; -- Begin function _ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionD1B7v160006Ev
	.globl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionD1B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionD1B7v160006Ev
	.p2align	2
__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionD1B7v160006Ev: ; @_ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionD1B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionD2B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionC2B7v160006ERS5_m ; -- Begin function _ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionC2B7v160006ERS5_m
	.globl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionC2B7v160006ERS5_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionC2B7v160006ERS5_m
	.p2align	2
__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionC2B7v160006ERS5_m: ; @_ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionC2B7v160006ERS5_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x0]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	str	x8, [x0, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	add	x8, x8, x9, lsl #4
	str	x8, [x0, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__19allocatorINS_4pairIxxEEE9constructB7v160006IS2_JRKS2_EEEvPT_DpOT0_ ; -- Begin function _ZNSt3__19allocatorINS_4pairIxxEEE9constructB7v160006IS2_JRKS2_EEEvPT_DpOT0_
	.weak_definition	__ZNSt3__19allocatorINS_4pairIxxEEE9constructB7v160006IS2_JRKS2_EEEvPT_DpOT0_
	.p2align	2
__ZNSt3__19allocatorINS_4pairIxxEEE9constructB7v160006IS2_JRKS2_EEEvPT_DpOT0_: ; @_ZNSt3__19allocatorINS_4pairIxxEEE9constructB7v160006IS2_JRKS2_EEEvPT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	ldr	q0, [x9]
	str	q0, [x8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE6secondB7v160006Ev ; -- Begin function _ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE6secondB7v160006Ev
	.globl	__ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE6secondB7v160006Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE6secondB7v160006Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE6secondB7v160006Ev: ; @_ZNSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE6secondB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorINS_4pairIxxEEEELi1ELb1EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_9allocatorINS_4pairIxxEEEELi1ELb1EE5__getB7v160006Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorINS_4pairIxxEEEELi1ELb1EE5__getB7v160006Ev
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorINS_4pairIxxEEEELi1ELb1EE5__getB7v160006Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemINS_9allocatorINS_4pairIxxEEEELi1ELb1EE5__getB7v160006Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorINS_4pairIxxEEEELi1ELb1EE5__getB7v160006Ev: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorINS_4pairIxxEEEELi1ELb1EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionD2B7v160006Ev ; -- Begin function _ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionD2B7v160006Ev
	.globl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionD2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionD2B7v160006Ev
	.p2align	2
__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionD2B7v160006Ev: ; @_ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE21_ConstructTransactionD2B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0, #8]
	ldr	x9, [x0]
	str	x8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE11__recommendB7v160006Em ; -- Begin function _ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE11__recommendB7v160006Em
	.globl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE11__recommendB7v160006Em
	.weak_definition	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE11__recommendB7v160006Em
	.p2align	2
__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE11__recommendB7v160006Em: ; @_ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE11__recommendB7v160006Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE8max_sizeEv
	str	x0, [sp, #32]
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	cset	w8, ls
	tbnz	w8, #0, LBB32_2
	b	LBB32_1
LBB32_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE20__throw_length_errorB7v160006Ev
LBB32_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE8capacityB7v160006Ev
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	mov	x10, #2
	udiv	x9, x9, x10
	subs	x8, x8, x9
	cset	w8, lo
	tbnz	w8, #0, LBB32_4
	b	LBB32_3
LBB32_3:
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	LBB32_5
LBB32_4:
	ldr	x9, [sp, #24]
	mov	x8, #2
	mul	x8, x8, x9
	add	x0, sp, #16
	str	x8, [sp, #16]
	sub	x1, x29, #24
	bl	__ZNSt3__13maxB7v160006ImEERKT_S3_S3_
	ldr	x8, [x0]
	stur	x8, [x29, #-8]
	b	LBB32_5
LBB32_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4sizeB7v160006Ev ; -- Begin function _ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4sizeB7v160006Ev
	.globl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4sizeB7v160006Ev
	.weak_definition	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4sizeB7v160006Ev
	.p2align	2
__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4sizeB7v160006Ev: ; @_ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4sizeB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #16
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEEC1EmmS5_ ; -- Begin function _ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEEC1EmmS5_
	.globl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEEC1EmmS5_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEEC1EmmS5_
	.p2align	2
__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEEC1EmmS5_: ; @_ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEEC1EmmS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEEC2EmmS5_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE ; -- Begin function _ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE
	.globl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE
	.weak_definition	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE
	.p2align	2
__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE: ; @_ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE17__annotate_deleteB7v160006Ev
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__allocB7v160006Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [x8, #8]
	sub	x0, x29, #48
	bl	__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEC1B7v160006ES3_
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x1, [x8]
	add	x0, sp, #48
	bl	__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEC1B7v160006ES3_
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	add	x0, sp, #32
	bl	__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEC1B7v160006ES3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-48]
	ldur	x2, [x29, #-40]
	ldr	x3, [sp, #48]
	ldr	x4, [sp, #56]
	ldr	x5, [sp, #32]
	ldr	x6, [sp, #40]
	bl	__ZNSt3__142__uninitialized_allocator_move_if_noexceptB7v160006INS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_
	mov	x8, x0
	sub	x0, x29, #32
	stur	x8, [x29, #-32]
	stur	x1, [x29, #-24]
	bl	__ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEE4baseB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	str	x8, [x9, #8]
	ldur	x8, [x29, #-16]
	add	x1, x8, #8
	bl	__ZNSt3__14swapB7v160006IPNS_4pairIxxEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x9, #8
	add	x1, x8, #16
	bl	__ZNSt3__14swapB7v160006IPNS_4pairIxxEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9__end_capB7v160006Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE9__end_capB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__14swapB7v160006IPNS_4pairIxxEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4sizeB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE14__annotate_newB7v160006Em
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__125__debug_db_invalidate_allB7v160006INS_6vectorINS_4pairIxxEENS_9allocatorIS3_EEEEEEvPT_
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEED1Ev ; -- Begin function _ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEED1Ev
	.globl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEED1Ev
	.p2align	2
__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEED1Ev: ; @_ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE8max_sizeEv ; -- Begin function _ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE8max_sizeEv
	.globl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE8max_sizeEv
	.weak_definition	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE8max_sizeEv
	.p2align	2
__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE8max_sizeEv: ; @_ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE8max_sizeEv
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__allocB7v160006Ev
	bl	__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE8max_sizeB7v160006IS4_vEEmRKS4_
	sub	x8, x29, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	bl	__ZNSt3__114numeric_limitsIlE3maxB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #24
	str	x8, [sp, #24]
Ltmp30:
	bl	__ZNSt3__13minB7v160006ImEERKT_S3_S3_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp31:
	b	LBB37_1
LBB37_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB37_2:
Ltmp32:
	bl	___clang_call_terminate
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table37:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Ltmp30-Lfunc_begin4            ; >> Call Site 1 <<
	.uleb128 Ltmp31-Ltmp30                  ;   Call between Ltmp30 and Ltmp31
	.uleb128 Ltmp32-Lfunc_begin4            ;     jumps to Ltmp32
	.byte	1                               ;   On action: 1
Lcst_end4:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE20__throw_length_errorB7v160006Ev ; -- Begin function _ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE20__throw_length_errorB7v160006Ev
	.globl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE20__throw_length_errorB7v160006Ev
	.weak_definition	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE20__throw_length_errorB7v160006Ev
	.p2align	2
__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE20__throw_length_errorB7v160006Ev: ; @_ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE20__throw_length_errorB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB7v160006EPKc
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE8capacityB7v160006Ev ; -- Begin function _ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE8capacityB7v160006Ev
	.globl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE8capacityB7v160006Ev
	.weak_definition	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE8capacityB7v160006Ev
	.p2align	2
__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE8capacityB7v160006Ev: ; @_ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE8capacityB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9__end_capB7v160006Ev
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #16
	sdiv	x0, x8, x9
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13maxB7v160006ImEERKT_S3_S3_ ; -- Begin function _ZNSt3__13maxB7v160006ImEERKT_S3_S3_
	.globl	__ZNSt3__13maxB7v160006ImEERKT_S3_S3_
	.weak_definition	__ZNSt3__13maxB7v160006ImEERKT_S3_S3_
	.p2align	2
__ZNSt3__13maxB7v160006ImEERKT_S3_S3_:  ; @_ZNSt3__13maxB7v160006ImEERKT_S3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__13maxB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13minB7v160006ImEERKT_S3_S3_ ; -- Begin function _ZNSt3__13minB7v160006ImEERKT_S3_S3_
	.globl	__ZNSt3__13minB7v160006ImEERKT_S3_S3_
	.weak_definition	__ZNSt3__13minB7v160006ImEERKT_S3_S3_
	.p2align	2
__ZNSt3__13minB7v160006ImEERKT_S3_S3_:  ; @_ZNSt3__13minB7v160006ImEERKT_S3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__13minB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE8max_sizeB7v160006IS4_vEEmRKS4_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE8max_sizeB7v160006IS4_vEEmRKS4_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE8max_sizeB7v160006IS4_vEEmRKS4_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE8max_sizeB7v160006IS4_vEEmRKS4_: ; @_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE8max_sizeB7v160006IS4_vEEmRKS4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__19allocatorINS_4pairIxxEEE8max_sizeB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__allocB7v160006Ev ; -- Begin function _ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__allocB7v160006Ev
	.globl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__allocB7v160006Ev
	.weak_definition	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__allocB7v160006Ev
	.p2align	2
__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__allocB7v160006Ev: ; @_ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__allocB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #16
	bl	__ZNKSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE6secondB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114numeric_limitsIlE3maxB7v160006Ev ; -- Begin function _ZNSt3__114numeric_limitsIlE3maxB7v160006Ev
	.globl	__ZNSt3__114numeric_limitsIlE3maxB7v160006Ev
	.weak_definition	__ZNSt3__114numeric_limitsIlE3maxB7v160006Ev
	.p2align	2
__ZNSt3__114numeric_limitsIlE3maxB7v160006Ev: ; @_ZNSt3__114numeric_limitsIlE3maxB7v160006Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB7v160006Ev
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13minB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_ ; -- Begin function _ZNSt3__13minB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	.globl	__ZNSt3__13minB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	.weak_definition	__ZNSt3__13minB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	.p2align	2
__ZNSt3__13minB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_: ; @_ZNSt3__13minB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #16]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessImmEclB7v160006ERKmS3_
	tbz	w0, #0, LBB45_2
	b	LBB45_1
LBB45_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB45_3
LBB45_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB45_3
LBB45_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16__lessImmEclB7v160006ERKmS3_ ; -- Begin function _ZNKSt3__16__lessImmEclB7v160006ERKmS3_
	.globl	__ZNKSt3__16__lessImmEclB7v160006ERKmS3_
	.weak_definition	__ZNKSt3__16__lessImmEclB7v160006ERKmS3_
	.p2align	2
__ZNKSt3__16__lessImmEclB7v160006ERKmS3_: ; @_ZNKSt3__16__lessImmEclB7v160006ERKmS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, lo
	and	w0, w8, #0x1
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19allocatorINS_4pairIxxEEE8max_sizeB7v160006Ev ; -- Begin function _ZNKSt3__19allocatorINS_4pairIxxEEE8max_sizeB7v160006Ev
	.globl	__ZNKSt3__19allocatorINS_4pairIxxEEE8max_sizeB7v160006Ev
	.weak_definition	__ZNKSt3__19allocatorINS_4pairIxxEEE8max_sizeB7v160006Ev
	.p2align	2
__ZNKSt3__19allocatorINS_4pairIxxEEE8max_sizeB7v160006Ev: ; @_ZNKSt3__19allocatorINS_4pairIxxEEE8max_sizeB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	x0, #1152921504606846975
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE6secondB7v160006Ev ; -- Begin function _ZNKSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE6secondB7v160006Ev
	.globl	__ZNKSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE6secondB7v160006Ev
	.weak_definition	__ZNKSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE6secondB7v160006Ev
	.p2align	2
__ZNKSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE6secondB7v160006Ev: ; @_ZNKSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE6secondB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_4pairIxxEEEELi1ELb1EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_4pairIxxEEEELi1ELb1EE5__getB7v160006Ev ; -- Begin function _ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_4pairIxxEEEELi1ELb1EE5__getB7v160006Ev
	.globl	__ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_4pairIxxEEEELi1ELb1EE5__getB7v160006Ev
	.weak_definition	__ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_4pairIxxEEEELi1ELb1EE5__getB7v160006Ev
	.p2align	2
__ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_4pairIxxEEEELi1ELb1EE5__getB7v160006Ev: ; @_ZNKSt3__122__compressed_pair_elemINS_9allocatorINS_4pairIxxEEEELi1ELb1EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB7v160006Ev ; -- Begin function _ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB7v160006Ev
	.globl	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB7v160006Ev
	.weak_definition	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB7v160006Ev
	.p2align	2
__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB7v160006Ev: ; @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB7v160006Ev
	.cfi_startproc
; %bb.0:
	mov	x0, #9223372036854775807
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB7v160006EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB7v160006EPKc
	.globl	__ZNSt3__120__throw_length_errorB7v160006EPKc
	.weak_definition	__ZNSt3__120__throw_length_errorB7v160006EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB7v160006EPKc: ; @_ZNSt3__120__throw_length_errorB7v160006EPKc
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	mov	x0, #16
	bl	___cxa_allocate_exception
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x1, [x29, #-8]
Ltmp36:
	bl	__ZNSt12length_errorC1B7v160006EPKc
Ltmp37:
	b	LBB51_1
LBB51_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x1, __ZTISt12length_error@GOTPAGE
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
LBB51_2:
Ltmp38:
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	bl	___cxa_free_exception
	b	LBB51_3
LBB51_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table51:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp36-Lfunc_begin5            ;   Call between Lfunc_begin5 and Ltmp36
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp36-Lfunc_begin5            ; >> Call Site 2 <<
	.uleb128 Ltmp37-Ltmp36                  ;   Call between Ltmp36 and Ltmp37
	.uleb128 Ltmp38-Lfunc_begin5            ;     jumps to Ltmp38
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp37-Lfunc_begin5            ; >> Call Site 3 <<
	.uleb128 Lfunc_end5-Ltmp37              ;   Call between Ltmp37 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12length_errorC1B7v160006EPKc ; -- Begin function _ZNSt12length_errorC1B7v160006EPKc
	.globl	__ZNSt12length_errorC1B7v160006EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC1B7v160006EPKc
	.p2align	2
__ZNSt12length_errorC1B7v160006EPKc:    ; @_ZNSt12length_errorC1B7v160006EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt12length_errorC2B7v160006EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt12length_errorC2B7v160006EPKc ; -- Begin function _ZNSt12length_errorC2B7v160006EPKc
	.globl	__ZNSt12length_errorC2B7v160006EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC2B7v160006EPKc
	.p2align	2
__ZNSt12length_errorC2B7v160006EPKc:    ; @_ZNSt12length_errorC2B7v160006EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, __ZTVSt12length_error@GOTPAGE
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt11logic_errorC2EPKc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9__end_capB7v160006Ev ; -- Begin function _ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9__end_capB7v160006Ev
	.globl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9__end_capB7v160006Ev
	.weak_definition	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9__end_capB7v160006Ev
	.p2align	2
__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9__end_capB7v160006Ev: ; @_ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE9__end_capB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #16
	bl	__ZNKSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE5firstB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE5firstB7v160006Ev ; -- Begin function _ZNKSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE5firstB7v160006Ev
	.globl	__ZNKSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE5firstB7v160006Ev
	.weak_definition	__ZNKSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE5firstB7v160006Ev
	.p2align	2
__ZNKSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE5firstB7v160006Ev: ; @_ZNKSt3__117__compressed_pairIPNS_4pairIxxEENS_9allocatorIS2_EEE5firstB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EE5__getB7v160006Ev ; -- Begin function _ZNKSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EE5__getB7v160006Ev
	.globl	__ZNKSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EE5__getB7v160006Ev
	.weak_definition	__ZNKSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EE5__getB7v160006Ev
	.p2align	2
__ZNKSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EE5__getB7v160006Ev: ; @_ZNKSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13maxB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_ ; -- Begin function _ZNSt3__13maxB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	.globl	__ZNSt3__13maxB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	.weak_definition	__ZNSt3__13maxB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	.p2align	2
__ZNSt3__13maxB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_: ; @_ZNSt3__13maxB7v160006ImNS_6__lessImmEEEERKT_S5_S5_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessImmEclB7v160006ERKmS3_
	tbz	w0, #0, LBB57_2
	b	LBB57_1
LBB57_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB57_3
LBB57_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB57_3
LBB57_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEEC2EmmS5_ ; -- Begin function _ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEEC2EmmS5_
	.globl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEEC2EmmS5_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEEC2EmmS5_
	.p2align	2
__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEEC2EmmS5_: ; @_ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEEC2EmmS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	str	x3, [sp, #40]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	add	x1, sp, #32
                                        ; kill: def $x9 killed $xzr
	str	xzr, [sp, #32]
	ldr	x2, [sp, #40]
	add	x0, x8, #24
	bl	__ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEEC1B7v160006IDnS6_EEOT_OT0_
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB58_2
	b	LBB58_1
LBB58_1:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	LBB58_3
LBB58_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE7__allocB7v160006Ev
	ldur	x1, [x29, #-24]
	bl	__ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorINS_4pairIxxEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x9]
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-24]
	b	LBB58_3
LBB58_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldur	x9, [x29, #-32]
	add	x8, x8, x9, lsl #4
	str	x8, [x0, #16]
	str	x8, [x0, #8]
	ldr	x8, [x0]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9, lsl #4
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE9__end_capB7v160006Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	str	x8, [x0]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEEC1B7v160006IDnS6_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEEC1B7v160006IDnS6_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEEC1B7v160006IDnS6_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEEC1B7v160006IDnS6_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEEC1B7v160006IDnS6_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEEC2B7v160006IDnS6_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorINS_4pairIxxEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m ; -- Begin function _ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorINS_4pairIxxEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m
	.globl	__ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorINS_4pairIxxEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m
	.weak_definition	__ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorINS_4pairIxxEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m
	.p2align	2
__ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorINS_4pairIxxEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m: ; @_ZNSt3__119__allocate_at_leastB7v160006INS_9allocatorINS_4pairIxxEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorINS_4pairIxxEEE8allocateB7v160006Em
	str	x0, [sp, #16]
	ldr	x8, [sp]
	str	x8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE7__allocB7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE7__allocB7v160006Ev
	.globl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE7__allocB7v160006Ev
	.weak_definition	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE7__allocB7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE7__allocB7v160006Ev: ; @_ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE7__allocB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #24
	bl	__ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEE6secondB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE9__end_capB7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE9__end_capB7v160006Ev
	.globl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE9__end_capB7v160006Ev
	.weak_definition	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE9__end_capB7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE9__end_capB7v160006Ev: ; @_ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE9__end_capB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #24
	bl	__ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEE5firstB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEEC2B7v160006IDnS6_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEEC2B7v160006IDnS6_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEEC2B7v160006IDnS6_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEEC2B7v160006IDnS6_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEEC2B7v160006IDnS6_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EEC2B7v160006IDnvEEOT_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]
	add	x0, x8, #8
	bl	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_4pairIxxEEEELi1ELb0EEC2B7v160006IS5_vEEOT_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_4pairIxxEEEELi1ELb0EEC2B7v160006IS5_vEEOT_ ; -- Begin function _ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_4pairIxxEEEELi1ELb0EEC2B7v160006IS5_vEEOT_
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_4pairIxxEEEELi1ELb0EEC2B7v160006IS5_vEEOT_
	.p2align	2
__ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_4pairIxxEEEELi1ELb0EEC2B7v160006IS5_vEEOT_: ; @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_4pairIxxEEEELi1ELb0EEC2B7v160006IS5_vEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorINS_4pairIxxEEE8allocateB7v160006Em ; -- Begin function _ZNSt3__19allocatorINS_4pairIxxEEE8allocateB7v160006Em
	.globl	__ZNSt3__19allocatorINS_4pairIxxEEE8allocateB7v160006Em
	.weak_definition	__ZNSt3__19allocatorINS_4pairIxxEEE8allocateB7v160006Em
	.p2align	2
__ZNSt3__19allocatorINS_4pairIxxEEE8allocateB7v160006Em: ; @_ZNSt3__19allocatorINS_4pairIxxEEE8allocateB7v160006Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE8max_sizeB7v160006IS4_vEEmRKS4_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, ls
	tbnz	w8, #0, LBB65_2
	b	LBB65_1
LBB65_1:
	bl	__ZSt28__throw_bad_array_new_lengthB7v160006v
LBB65_2:
	ldr	x8, [sp, #16]
	lsl	x0, x8, #4
	mov	x1, #8
	bl	__ZNSt3__117__libcpp_allocateB7v160006Emm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZSt28__throw_bad_array_new_lengthB7v160006v ; -- Begin function _ZSt28__throw_bad_array_new_lengthB7v160006v
	.globl	__ZSt28__throw_bad_array_new_lengthB7v160006v
	.weak_definition	__ZSt28__throw_bad_array_new_lengthB7v160006v
	.p2align	2
__ZSt28__throw_bad_array_new_lengthB7v160006v: ; @_ZSt28__throw_bad_array_new_lengthB7v160006v
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x0, #8
	bl	___cxa_allocate_exception
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt20bad_array_new_lengthC1Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__libcpp_allocateB7v160006Emm ; -- Begin function _ZNSt3__117__libcpp_allocateB7v160006Emm
	.globl	__ZNSt3__117__libcpp_allocateB7v160006Emm
	.weak_definition	__ZNSt3__117__libcpp_allocateB7v160006Emm
	.p2align	2
__ZNSt3__117__libcpp_allocateB7v160006Emm: ; @_ZNSt3__117__libcpp_allocateB7v160006Emm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__121__libcpp_operator_newB7v160006IJmEEEPvDpT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__libcpp_operator_newB7v160006IJmEEEPvDpT_ ; -- Begin function _ZNSt3__121__libcpp_operator_newB7v160006IJmEEEPvDpT_
	.globl	__ZNSt3__121__libcpp_operator_newB7v160006IJmEEEPvDpT_
	.weak_definition	__ZNSt3__121__libcpp_operator_newB7v160006IJmEEEPvDpT_
	.p2align	2
__ZNSt3__121__libcpp_operator_newB7v160006IJmEEEPvDpT_: ; @_ZNSt3__121__libcpp_operator_newB7v160006IJmEEEPvDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__Znwm
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEE6secondB7v160006Ev ; -- Begin function _ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEE6secondB7v160006Ev
	.globl	__ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEE6secondB7v160006Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEE6secondB7v160006Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEE6secondB7v160006Ev: ; @_ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEE6secondB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #8
	bl	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_4pairIxxEEEELi1ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_4pairIxxEEEELi1ELb0EE5__getB7v160006Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_4pairIxxEEEELi1ELb0EE5__getB7v160006Ev
	.globl	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_4pairIxxEEEELi1ELb0EE5__getB7v160006Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_4pairIxxEEEELi1ELb0EE5__getB7v160006Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_4pairIxxEEEELi1ELb0EE5__getB7v160006Ev: ; @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorINS_4pairIxxEEEELi1ELb0EE5__getB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEE5firstB7v160006Ev ; -- Begin function _ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEE5firstB7v160006Ev
	.globl	__ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEE5firstB7v160006Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEE5firstB7v160006Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEE5firstB7v160006Ev: ; @_ZNSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEE5firstB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE17__annotate_deleteB7v160006Ev ; -- Begin function _ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE17__annotate_deleteB7v160006Ev
	.globl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE17__annotate_deleteB7v160006Ev
	.weak_definition	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE17__annotate_deleteB7v160006Ev
	.p2align	2
__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE17__annotate_deleteB7v160006Ev: ; @_ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE17__annotate_deleteB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	stur	x0, [x29, #-16]                 ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4dataB7v160006Ev
	mov	x1, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x1, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4dataB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE8capacityB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4dataB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4sizeB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4dataB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	stur	x8, [x29, #-24]                 ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE8capacityB7v160006Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x13, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x12, [sp, #16]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #24]                  ; 8-byte Folded Reload
	ldr	x10, [sp, #32]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]                 ; 8-byte Folded Reload
	mov	x9, x0
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	add	x2, x12, x13, lsl #4
	add	x3, x10, x11, lsl #4
	add	x4, x8, x9, lsl #4
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB7v160006EPKvS7_S7_S7_
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__142__uninitialized_allocator_move_if_noexceptB7v160006INS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_ ; -- Begin function _ZNSt3__142__uninitialized_allocator_move_if_noexceptB7v160006INS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_
	.globl	__ZNSt3__142__uninitialized_allocator_move_if_noexceptB7v160006INS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_
	.weak_definition	__ZNSt3__142__uninitialized_allocator_move_if_noexceptB7v160006INS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_
	.p2align	2
__ZNSt3__142__uninitialized_allocator_move_if_noexceptB7v160006INS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_: ; @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB7v160006INS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x29, x30, [sp, #224]            ; 16-byte Folded Spill
	add	x29, sp, #224
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #32
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	str	x1, [x8]
	str	x2, [x8, #8]
	stur	x3, [x29, #-48]
	stur	x4, [x29, #-40]
	sub	x3, x29, #64
	stur	x5, [x29, #-64]
	stur	x6, [x29, #-56]
	stur	x0, [x29, #-72]
	ldur	q0, [x29, #-64]
	sub	x2, x29, #96
	stur	q0, [x29, #-96]
	ldur	x1, [x29, #-72]
	add	x0, sp, #72
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	bl	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EEEC1B7v160006ERS4_RS7_SA_
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	add	x8, sp, #96
	bl	__ZNSt3__122__make_exception_guardB7v160006INS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEEENS_28__exception_guard_exceptionsIT_EESB_
	b	LBB73_1
LBB73_1:                                ; =>This Inner Loop Header: Depth=1
Ltmp42:
	sub	x0, x29, #32
	sub	x1, x29, #48
	bl	__ZNSt3__1neB7v160006IPNS_4pairIxxEES3_EEbRKNS_16reverse_iteratorIT_EERKNS4_IT0_EE
	str	w0, [sp, #36]                   ; 4-byte Folded Spill
Ltmp43:
	b	LBB73_2
LBB73_2:                                ;   in Loop: Header=BB73_1 Depth=1
	ldr	w8, [sp, #36]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB73_9
	b	LBB73_3
LBB73_3:                                ;   in Loop: Header=BB73_1 Depth=1
	ldur	x8, [x29, #-72]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	sub	x0, x29, #64
	bl	__ZNSt3__112__to_addressB7v160006INS_16reverse_iteratorIPNS_4pairIxxEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS7_EEEEE4typeES9_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp44:
	sub	x0, x29, #32
	bl	__ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEEdeB7v160006Ev
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp45:
	b	LBB73_4
LBB73_4:                                ;   in Loop: Header=BB73_1 Depth=1
Ltmp46:
	ldr	x2, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE9constructB7v160006IS3_JS3_EvEEvRS4_PT_DpOT0_
Ltmp47:
	b	LBB73_5
LBB73_5:                                ;   in Loop: Header=BB73_1 Depth=1
Ltmp48:
	sub	x0, x29, #32
	bl	__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEppB7v160006Ev
Ltmp49:
	b	LBB73_6
LBB73_6:                                ;   in Loop: Header=BB73_1 Depth=1
Ltmp50:
	sub	x0, x29, #64
	bl	__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEppB7v160006Ev
Ltmp51:
	b	LBB73_7
LBB73_7:                                ;   in Loop: Header=BB73_1 Depth=1
	b	LBB73_1
LBB73_8:
Ltmp52:
	str	x0, [sp, #64]
	mov	x8, x1
	str	w8, [sp, #60]
	add	x0, sp, #96
	bl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEED1B7v160006Ev
	b	LBB73_10
LBB73_9:
	add	x0, sp, #96
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEE10__completeB7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldur	q0, [x29, #-64]
	str	q0, [x8, #16]
	bl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEED1B7v160006Ev
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x0, [x8, #16]
	ldr	x1, [x8, #24]
	ldp	x29, x30, [sp, #224]            ; 16-byte Folded Reload
	add	sp, sp, #240
	ret
LBB73_10:
	ldr	x0, [sp, #64]
	bl	__Unwind_Resume
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table73:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ; >> Call Site 1 <<
	.uleb128 Ltmp42-Lfunc_begin6            ;   Call between Lfunc_begin6 and Ltmp42
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp42-Lfunc_begin6            ; >> Call Site 2 <<
	.uleb128 Ltmp51-Ltmp42                  ;   Call between Ltmp42 and Ltmp51
	.uleb128 Ltmp52-Lfunc_begin6            ;     jumps to Ltmp52
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp51-Lfunc_begin6            ; >> Call Site 3 <<
	.uleb128 Lfunc_end6-Ltmp51              ;   Call between Ltmp51 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEC1B7v160006ES3_ ; -- Begin function _ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEC1B7v160006ES3_
	.globl	__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEC1B7v160006ES3_
	.weak_def_can_be_hidden	__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEC1B7v160006ES3_
	.p2align	2
__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEC1B7v160006ES3_: ; @_ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEC1B7v160006ES3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEC2B7v160006ES3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEE4baseB7v160006Ev ; -- Begin function _ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEE4baseB7v160006Ev
	.globl	__ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEE4baseB7v160006Ev
	.weak_definition	__ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEE4baseB7v160006Ev
	.p2align	2
__ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEE4baseB7v160006Ev: ; @_ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEE4baseB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14swapB7v160006IPNS_4pairIxxEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_ ; -- Begin function _ZNSt3__14swapB7v160006IPNS_4pairIxxEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_
	.globl	__ZNSt3__14swapB7v160006IPNS_4pairIxxEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_
	.weak_definition	__ZNSt3__14swapB7v160006IPNS_4pairIxxEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_
	.p2align	2
__ZNSt3__14swapB7v160006IPNS_4pairIxxEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_: ; @_ZNSt3__14swapB7v160006IPNS_4pairIxxEEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE14__annotate_newB7v160006Em ; -- Begin function _ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE14__annotate_newB7v160006Em
	.globl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE14__annotate_newB7v160006Em
	.weak_definition	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE14__annotate_newB7v160006Em
	.p2align	2
__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE14__annotate_newB7v160006Em: ; @_ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE14__annotate_newB7v160006Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	stur	x0, [x29, #-24]                 ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4dataB7v160006Ev
	mov	x1, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	str	x1, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4dataB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE8capacityB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4dataB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE8capacityB7v160006Ev
	mov	x8, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4dataB7v160006Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x13, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x12, [sp, #16]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #24]                  ; 8-byte Folded Reload
	ldr	x10, [sp, #32]                  ; 8-byte Folded Reload
	mov	x8, x0
	ldur	x0, [x29, #-24]                 ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	add	x2, x12, x13, lsl #4
	add	x3, x10, x11, lsl #4
	add	x4, x8, x9, lsl #4
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB7v160006EPKvS7_S7_S7_
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__125__debug_db_invalidate_allB7v160006INS_6vectorINS_4pairIxxEENS_9allocatorIS3_EEEEEEvPT_ ; -- Begin function _ZNSt3__125__debug_db_invalidate_allB7v160006INS_6vectorINS_4pairIxxEENS_9allocatorIS3_EEEEEEvPT_
	.globl	__ZNSt3__125__debug_db_invalidate_allB7v160006INS_6vectorINS_4pairIxxEENS_9allocatorIS3_EEEEEEvPT_
	.weak_definition	__ZNSt3__125__debug_db_invalidate_allB7v160006INS_6vectorINS_4pairIxxEENS_9allocatorIS3_EEEEEEvPT_
	.p2align	2
__ZNSt3__125__debug_db_invalidate_allB7v160006INS_6vectorINS_4pairIxxEENS_9allocatorIS3_EEEEEEvPT_: ; @_ZNSt3__125__debug_db_invalidate_allB7v160006INS_6vectorINS_4pairIxxEENS_9allocatorIS3_EEEEEEvPT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB7v160006EPKvS7_S7_S7_ ; -- Begin function _ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB7v160006EPKvS7_S7_S7_
	.globl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB7v160006EPKvS7_S7_S7_
	.weak_definition	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB7v160006EPKvS7_S7_S7_
	.p2align	2
__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB7v160006EPKvS7_S7_S7_: ; @_ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE31__annotate_contiguous_containerB7v160006EPKvS7_S7_S7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	str	x4, [sp, #8]
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4dataB7v160006Ev ; -- Begin function _ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4dataB7v160006Ev
	.globl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4dataB7v160006Ev
	.weak_definition	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4dataB7v160006Ev
	.p2align	2
__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4dataB7v160006Ev: ; @_ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE4dataB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	__ZNSt3__112__to_addressB7v160006INS_4pairIxxEEEEPT_S4_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__make_exception_guardB7v160006INS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEEENS_28__exception_guard_exceptionsIT_EESB_ ; -- Begin function _ZNSt3__122__make_exception_guardB7v160006INS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEEENS_28__exception_guard_exceptionsIT_EESB_
	.globl	__ZNSt3__122__make_exception_guardB7v160006INS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEEENS_28__exception_guard_exceptionsIT_EESB_
	.weak_definition	__ZNSt3__122__make_exception_guardB7v160006INS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEEENS_28__exception_guard_exceptionsIT_EESB_
	.p2align	2
__ZNSt3__122__make_exception_guardB7v160006INS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEEENS_28__exception_guard_exceptionsIT_EESB_: ; @_ZNSt3__122__make_exception_guardB7v160006INS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEEENS_28__exception_guard_exceptionsIT_EESB_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, x0
	stur	x9, [x29, #-8]
	mov	x9, x8
	stur	x9, [x29, #-16]
	ldr	q0, [x8]
	add	x1, sp, #16
	str	q0, [sp, #16]
	ldr	x8, [x8, #16]
	str	x8, [sp, #32]
	bl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEEC1B7v160006ES9_
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EEEC1B7v160006ERS4_RS7_SA_ ; -- Begin function _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EEEC1B7v160006ERS4_RS7_SA_
	.globl	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EEEC1B7v160006ERS4_RS7_SA_
	.weak_def_can_be_hidden	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EEEC1B7v160006ERS4_RS7_SA_
	.p2align	2
__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EEEC1B7v160006ERS4_RS7_SA_: ; @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EEEC1B7v160006ERS4_RS7_SA_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EEEC2B7v160006ERS4_RS7_SA_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1neB7v160006IPNS_4pairIxxEES3_EEbRKNS_16reverse_iteratorIT_EERKNS4_IT0_EE ; -- Begin function _ZNSt3__1neB7v160006IPNS_4pairIxxEES3_EEbRKNS_16reverse_iteratorIT_EERKNS4_IT0_EE
	.globl	__ZNSt3__1neB7v160006IPNS_4pairIxxEES3_EEbRKNS_16reverse_iteratorIT_EERKNS4_IT0_EE
	.weak_definition	__ZNSt3__1neB7v160006IPNS_4pairIxxEES3_EEbRKNS_16reverse_iteratorIT_EERKNS4_IT0_EE
	.p2align	2
__ZNSt3__1neB7v160006IPNS_4pairIxxEES3_EEbRKNS_16reverse_iteratorIT_EERKNS4_IT0_EE: ; @_ZNSt3__1neB7v160006IPNS_4pairIxxEES3_EEbRKNS_16reverse_iteratorIT_EERKNS4_IT0_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEE4baseB7v160006Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEE4baseB7v160006Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w8, ne
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE9constructB7v160006IS3_JS3_EvEEvRS4_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE9constructB7v160006IS3_JS3_EvEEvRS4_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE9constructB7v160006IS3_JS3_EvEEvRS4_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE9constructB7v160006IS3_JS3_EvEEvRS4_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE9constructB7v160006IS3_JS3_EvEEvRS4_PT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorINS_4pairIxxEEE9constructB7v160006IS2_JS2_EEEvPT_DpOT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB7v160006INS_16reverse_iteratorIPNS_4pairIxxEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS7_EEEEE4typeES9_ ; -- Begin function _ZNSt3__112__to_addressB7v160006INS_16reverse_iteratorIPNS_4pairIxxEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS7_EEEEE4typeES9_
	.globl	__ZNSt3__112__to_addressB7v160006INS_16reverse_iteratorIPNS_4pairIxxEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS7_EEEEE4typeES9_
	.weak_definition	__ZNSt3__112__to_addressB7v160006INS_16reverse_iteratorIPNS_4pairIxxEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS7_EEEEE4typeES9_
	.p2align	2
__ZNSt3__112__to_addressB7v160006INS_16reverse_iteratorIPNS_4pairIxxEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS7_EEEEE4typeES9_: ; @_ZNSt3__112__to_addressB7v160006INS_16reverse_iteratorIPNS_4pairIxxEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS7_EEEEE4typeES9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_4pairIxxEEEEvE6__callB7v160006ERKS5_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEEdeB7v160006Ev ; -- Begin function _ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEEdeB7v160006Ev
	.globl	__ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEEdeB7v160006Ev
	.weak_definition	__ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEEdeB7v160006Ev
	.p2align	2
__ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEEdeB7v160006Ev: ; @_ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEEdeB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x0, x8, #16
	str	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEppB7v160006Ev ; -- Begin function _ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEppB7v160006Ev
	.globl	__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEppB7v160006Ev
	.weak_definition	__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEppB7v160006Ev
	.p2align	2
__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEppB7v160006Ev: ; @_ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEppB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0, #8]
	subs	x8, x8, #16
	str	x8, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEE10__completeB7v160006Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEE10__completeB7v160006Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEE10__completeB7v160006Ev
	.weak_definition	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEE10__completeB7v160006Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEE10__completeB7v160006Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEE10__completeB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #1
	strb	w8, [x9, #24]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEED1B7v160006Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEED1B7v160006Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEED1B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEED1B7v160006Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEED1B7v160006Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEED1B7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEED2B7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEEC1B7v160006ES9_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEEC1B7v160006ES9_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEEC1B7v160006ES9_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEEC1B7v160006ES9_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEEC1B7v160006ES9_: ; @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEEC1B7v160006ES9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	mov	x8, x1
	str	x8, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEEC2B7v160006ES9_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEEC2B7v160006ES9_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEEC2B7v160006ES9_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEEC2B7v160006ES9_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEEC2B7v160006ES9_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEEC2B7v160006ES9_: ; @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEEC2B7v160006ES9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	x8, x1
	str	x8, [sp]
	ldr	x0, [sp, #8]
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	x8, [x1, #16]
	str	x8, [x0, #16]
	strb	wzr, [x0, #24]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EEEC2B7v160006ERS4_RS7_SA_ ; -- Begin function _ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EEEC2B7v160006ERS4_RS7_SA_
	.globl	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EEEC2B7v160006ERS4_RS7_SA_
	.weak_def_can_be_hidden	__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EEEC2B7v160006ERS4_RS7_SA_
	.p2align	2
__ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EEEC2B7v160006ERS4_RS7_SA_: ; @_ZNSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EEEC2B7v160006ERS4_RS7_SA_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	str	x8, [x0, #8]
	ldr	x8, [sp]
	str	x8, [x0, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__19allocatorINS_4pairIxxEEE9constructB7v160006IS2_JS2_EEEvPT_DpOT0_ ; -- Begin function _ZNSt3__19allocatorINS_4pairIxxEEE9constructB7v160006IS2_JS2_EEEvPT_DpOT0_
	.weak_definition	__ZNSt3__19allocatorINS_4pairIxxEEE9constructB7v160006IS2_JS2_EEEvPT_DpOT0_
	.p2align	2
__ZNSt3__19allocatorINS_4pairIxxEEE9constructB7v160006IS2_JS2_EEEvPT_DpOT0_: ; @_ZNSt3__19allocatorINS_4pairIxxEEE9constructB7v160006IS2_JS2_EEEvPT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	ldr	q0, [x9]
	str	q0, [x8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_4pairIxxEEEEvE6__callB7v160006ERKS5_ ; -- Begin function _ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_4pairIxxEEEEvE6__callB7v160006ERKS5_
	.globl	__ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_4pairIxxEEEEvE6__callB7v160006ERKS5_
	.weak_definition	__ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_4pairIxxEEEEvE6__callB7v160006ERKS5_
	.p2align	2
__ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_4pairIxxEEEEvE6__callB7v160006ERKS5_: ; @_ZNSt3__119__to_address_helperINS_16reverse_iteratorIPNS_4pairIxxEEEEvE6__callB7v160006ERKS5_
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
Ltmp63:
	bl	__ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEEptB7v160006Ev
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp64:
	b	LBB94_1
LBB94_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__112__to_addressB7v160006INS_4pairIxxEEEEPT_S4_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
LBB94_2:
Ltmp65:
	bl	___clang_call_terminate
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table94:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Ltmp63-Lfunc_begin7            ; >> Call Site 1 <<
	.uleb128 Ltmp64-Ltmp63                  ;   Call between Ltmp63 and Ltmp64
	.uleb128 Ltmp65-Lfunc_begin7            ;     jumps to Ltmp65
	.byte	1                               ;   On action: 1
Lcst_end7:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEEptB7v160006Ev ; -- Begin function _ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEEptB7v160006Ev
	.globl	__ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEEptB7v160006Ev
	.weak_definition	__ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEEptB7v160006Ev
	.p2align	2
__ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEEptB7v160006Ev: ; @_ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEEptB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEEdeB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEED2B7v160006Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEED2B7v160006Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEED2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEED2B7v160006Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEED2B7v160006Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS4_EEEEED2B7v160006Ev
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	ldrb	w8, [x8, #24]
	tbnz	w8, #0, LBB96_3
	b	LBB96_1
LBB96_1:
Ltmp66:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EEEclB7v160006Ev
Ltmp67:
	b	LBB96_2
LBB96_2:
	b	LBB96_3
LBB96_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB96_4:
Ltmp68:
	bl	___clang_call_terminate
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table96:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Ltmp66-Lfunc_begin8            ; >> Call Site 1 <<
	.uleb128 Ltmp67-Ltmp66                  ;   Call between Ltmp66 and Ltmp67
	.uleb128 Ltmp68-Lfunc_begin8            ;     jumps to Ltmp68
	.byte	1                               ;   On action: 1
Lcst_end8:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EEEclB7v160006Ev ; -- Begin function _ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EEEclB7v160006Ev
	.globl	__ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EEEclB7v160006Ev
	.weak_definition	__ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EEEclB7v160006Ev
	.p2align	2
__ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EEEclB7v160006Ev: ; @_ZNKSt3__129_AllocatorDestroyRangeReverseINS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorIPS3_EEEclB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #64]
	ldr	x8, [sp, #64]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x9, [x8]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [x8, #16]
	ldr	q0, [x8]
	str	q0, [sp, #48]
	ldr	x1, [sp, #48]
	ldr	x2, [sp, #56]
	sub	x0, x29, #48
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEC1B7v160006ES4_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldr	q0, [x8]
	str	q0, [sp, #32]
	ldr	x1, [sp, #32]
	ldr	x2, [sp, #40]
	add	x0, sp, #72
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEC1B7v160006ES4_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__119__allocator_destroyB7v160006INS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorINS5_IPS3_EEEES8_EEvRT_T0_T1_
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB97_2
	b	LBB97_1
LBB97_1:
	bl	___stack_chk_fail
LBB97_2:
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__allocator_destroyB7v160006INS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorINS5_IPS3_EEEES8_EEvRT_T0_T1_ ; -- Begin function _ZNSt3__119__allocator_destroyB7v160006INS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorINS5_IPS3_EEEES8_EEvRT_T0_T1_
	.globl	__ZNSt3__119__allocator_destroyB7v160006INS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorINS5_IPS3_EEEES8_EEvRT_T0_T1_
	.weak_definition	__ZNSt3__119__allocator_destroyB7v160006INS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorINS5_IPS3_EEEES8_EEvRT_T0_T1_
	.p2align	2
__ZNSt3__119__allocator_destroyB7v160006INS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorINS5_IPS3_EEEES8_EEvRT_T0_T1_: ; @_ZNSt3__119__allocator_destroyB7v160006INS_9allocatorINS_4pairIxxEEEENS_16reverse_iteratorINS5_IPS3_EEEES8_EEvRT_T0_T1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	str	x2, [sp, #16]                   ; 8-byte Folded Spill
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	b	LBB98_1
LBB98_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__1neB7v160006INS_16reverse_iteratorIPNS_4pairIxxEEEES5_EEbRKNS1_IT_EERKNS1_IT0_EE
	tbz	w0, #0, LBB98_4
	b	LBB98_2
LBB98_2:                                ;   in Loop: Header=BB98_1 Depth=1
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__112__to_addressB7v160006INS_16reverse_iteratorINS1_IPNS_4pairIxxEEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS8_EEEEE4typeESA_
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE7destroyB7v160006IS3_vEEvRS4_PT_
	b	LBB98_3
LBB98_3:                                ;   in Loop: Header=BB98_1 Depth=1
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEppB7v160006Ev
	b	LBB98_1
LBB98_4:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEC1B7v160006ES4_ ; -- Begin function _ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEC1B7v160006ES4_
	.globl	__ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEC1B7v160006ES4_
	.weak_def_can_be_hidden	__ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEC1B7v160006ES4_
	.p2align	2
__ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEC1B7v160006ES4_: ; @_ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEC1B7v160006ES4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x1, [sp, #16]
	str	x2, [sp, #24]
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #24]
	bl	__ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEC2B7v160006ES4_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1neB7v160006INS_16reverse_iteratorIPNS_4pairIxxEEEES5_EEbRKNS1_IT_EERKNS1_IT0_EE ; -- Begin function _ZNSt3__1neB7v160006INS_16reverse_iteratorIPNS_4pairIxxEEEES5_EEbRKNS1_IT_EERKNS1_IT0_EE
	.globl	__ZNSt3__1neB7v160006INS_16reverse_iteratorIPNS_4pairIxxEEEES5_EEbRKNS1_IT_EERKNS1_IT0_EE
	.weak_definition	__ZNSt3__1neB7v160006INS_16reverse_iteratorIPNS_4pairIxxEEEES5_EEbRKNS1_IT_EERKNS1_IT0_EE
	.p2align	2
__ZNSt3__1neB7v160006INS_16reverse_iteratorIPNS_4pairIxxEEEES5_EEbRKNS1_IT_EERKNS1_IT0_EE: ; @_ZNSt3__1neB7v160006INS_16reverse_iteratorIPNS_4pairIxxEEEES5_EEbRKNS1_IT_EERKNS1_IT0_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEE4baseB7v160006Ev
	add	x8, sp, #32
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #32]
	str	x1, [sp, #40]
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEE4baseB7v160006Ev
	mov	x9, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, x1
	add	x1, sp, #16
	str	x9, [sp, #16]
	str	x8, [sp, #24]
	bl	__ZNSt3__1neB7v160006IPNS_4pairIxxEES3_EEbRKNS_16reverse_iteratorIT_EERKNS4_IT0_EE
	and	w0, w0, #0x1
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE7destroyB7v160006IS3_vEEvRS4_PT_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE7destroyB7v160006IS3_vEEvRS4_PT_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE7destroyB7v160006IS3_vEEvRS4_PT_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE7destroyB7v160006IS3_vEEvRS4_PT_: ; @_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE7destroyB7v160006IS3_vEEvRS4_PT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorINS_4pairIxxEEE7destroyB7v160006EPS2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB7v160006INS_16reverse_iteratorINS1_IPNS_4pairIxxEEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS8_EEEEE4typeESA_ ; -- Begin function _ZNSt3__112__to_addressB7v160006INS_16reverse_iteratorINS1_IPNS_4pairIxxEEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS8_EEEEE4typeESA_
	.globl	__ZNSt3__112__to_addressB7v160006INS_16reverse_iteratorINS1_IPNS_4pairIxxEEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS8_EEEEE4typeESA_
	.weak_definition	__ZNSt3__112__to_addressB7v160006INS_16reverse_iteratorINS1_IPNS_4pairIxxEEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS8_EEEEE4typeESA_
	.p2align	2
__ZNSt3__112__to_addressB7v160006INS_16reverse_iteratorINS1_IPNS_4pairIxxEEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS8_EEEEE4typeESA_: ; @_ZNSt3__112__to_addressB7v160006INS_16reverse_iteratorINS1_IPNS_4pairIxxEEEEEEvEENS_5decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS8_EEEEE4typeESA_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__119__to_address_helperINS_16reverse_iteratorINS1_IPNS_4pairIxxEEEEEEvE6__callB7v160006ERKS6_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEppB7v160006Ev ; -- Begin function _ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEppB7v160006Ev
	.globl	__ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEppB7v160006Ev
	.weak_definition	__ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEppB7v160006Ev
	.p2align	2
__ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEppB7v160006Ev: ; @_ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEppB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, x8, #24
	bl	__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEmmB7v160006Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEE4baseB7v160006Ev ; -- Begin function _ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEE4baseB7v160006Ev
	.globl	__ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEE4baseB7v160006Ev
	.weak_definition	__ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEE4baseB7v160006Ev
	.p2align	2
__ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEE4baseB7v160006Ev: ; @_ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEE4baseB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldur	q0, [x8, #24]
	str	q0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorINS_4pairIxxEEE7destroyB7v160006EPS2_ ; -- Begin function _ZNSt3__19allocatorINS_4pairIxxEEE7destroyB7v160006EPS2_
	.globl	__ZNSt3__19allocatorINS_4pairIxxEEE7destroyB7v160006EPS2_
	.weak_definition	__ZNSt3__19allocatorINS_4pairIxxEEE7destroyB7v160006EPS2_
	.p2align	2
__ZNSt3__19allocatorINS_4pairIxxEEE7destroyB7v160006EPS2_: ; @_ZNSt3__19allocatorINS_4pairIxxEEE7destroyB7v160006EPS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__to_address_helperINS_16reverse_iteratorINS1_IPNS_4pairIxxEEEEEEvE6__callB7v160006ERKS6_ ; -- Begin function _ZNSt3__119__to_address_helperINS_16reverse_iteratorINS1_IPNS_4pairIxxEEEEEEvE6__callB7v160006ERKS6_
	.globl	__ZNSt3__119__to_address_helperINS_16reverse_iteratorINS1_IPNS_4pairIxxEEEEEEvE6__callB7v160006ERKS6_
	.weak_definition	__ZNSt3__119__to_address_helperINS_16reverse_iteratorINS1_IPNS_4pairIxxEEEEEEvE6__callB7v160006ERKS6_
	.p2align	2
__ZNSt3__119__to_address_helperINS_16reverse_iteratorINS1_IPNS_4pairIxxEEEEEEvE6__callB7v160006ERKS6_: ; @_ZNSt3__119__to_address_helperINS_16reverse_iteratorINS1_IPNS_4pairIxxEEEEEEvE6__callB7v160006ERKS6_
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
Ltmp71:
	bl	__ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEptB7v160006Ev
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp72:
	b	LBB106_1
LBB106_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__112__to_addressB7v160006INS_4pairIxxEEEEPT_S4_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
LBB106_2:
Ltmp73:
	bl	___clang_call_terminate
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table106:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase4-Lttbaseref4
Lttbaseref4:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Ltmp71-Lfunc_begin9            ; >> Call Site 1 <<
	.uleb128 Ltmp72-Ltmp71                  ;   Call between Ltmp71 and Ltmp72
	.uleb128 Ltmp73-Lfunc_begin9            ;     jumps to Ltmp73
	.byte	1                               ;   On action: 1
Lcst_end9:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEptB7v160006Ev ; -- Begin function _ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEptB7v160006Ev
	.globl	__ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEptB7v160006Ev
	.weak_definition	__ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEptB7v160006Ev
	.p2align	2
__ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEptB7v160006Ev: ; @_ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEptB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEdeB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEdeB7v160006Ev ; -- Begin function _ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEdeB7v160006Ev
	.globl	__ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEdeB7v160006Ev
	.weak_definition	__ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEdeB7v160006Ev
	.p2align	2
__ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEdeB7v160006Ev: ; @_ZNKSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEdeB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldur	q0, [x8, #24]
	mov	x0, sp
	str	q0, [sp]
	bl	__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEmmB7v160006Ev
	bl	__ZNKSt3__116reverse_iteratorIPNS_4pairIxxEEEdeB7v160006Ev
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEmmB7v160006Ev ; -- Begin function _ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEmmB7v160006Ev
	.globl	__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEmmB7v160006Ev
	.weak_definition	__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEmmB7v160006Ev
	.p2align	2
__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEmmB7v160006Ev: ; @_ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEmmB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0, #8]
	add	x8, x8, #16
	str	x8, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEC2B7v160006ES4_ ; -- Begin function _ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEC2B7v160006ES4_
	.globl	__ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEC2B7v160006ES4_
	.weak_def_can_be_hidden	__ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEC2B7v160006ES4_
	.p2align	2
__ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEC2B7v160006ES4_: ; @_ZNSt3__116reverse_iteratorINS0_IPNS_4pairIxxEEEEEC2B7v160006ES4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x1, [sp, #16]
	str	x2, [sp, #24]
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	q0, [sp, #16]
	stur	q0, [x0, #8]
	ldr	q0, [sp, #16]
	stur	q0, [x0, #24]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEC2B7v160006ES3_ ; -- Begin function _ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEC2B7v160006ES3_
	.globl	__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEC2B7v160006ES3_
	.weak_def_can_be_hidden	__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEC2B7v160006ES3_
	.p2align	2
__ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEC2B7v160006ES3_: ; @_ZNSt3__116reverse_iteratorIPNS_4pairIxxEEEC2B7v160006ES3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	ldr	x8, [sp]
	str	x8, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEED2Ev ; -- Begin function _ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEED2Ev
	.globl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEED2Ev
	.p2align	2
__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEED2Ev: ; @_ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEED2Ev
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x8, x0
	stur	x8, [x29, #-8]
	bl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE5clearB7v160006Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB112_3
	b	LBB112_1
LBB112_1:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE7__allocB7v160006Ev
	mov	x1, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x1, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x0]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
Ltmp77:
	bl	__ZNKSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE8capacityB7v160006Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp78:
	b	LBB112_2
LBB112_2:
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE10deallocateB7v160006ERS4_PS3_m
	b	LBB112_3
LBB112_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB112_4:
Ltmp79:
	bl	___clang_call_terminate
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table112:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase5-Lttbaseref5
Lttbaseref5:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Ltmp77-Lfunc_begin10           ; >> Call Site 1 <<
	.uleb128 Ltmp78-Ltmp77                  ;   Call between Ltmp77 and Ltmp78
	.uleb128 Ltmp79-Lfunc_begin10           ;     jumps to Ltmp79
	.byte	1                               ;   On action: 1
Lcst_end10:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE5clearB7v160006Ev ; -- Begin function _ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE5clearB7v160006Ev
	.globl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE5clearB7v160006Ev
	.weak_definition	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE5clearB7v160006Ev
	.p2align	2
__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE5clearB7v160006Ev: ; @_ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE5clearB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [x0, #8]
	bl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE17__destruct_at_endB7v160006EPS2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE10deallocateB7v160006ERS4_PS3_m ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE10deallocateB7v160006ERS4_PS3_m
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE10deallocateB7v160006ERS4_PS3_m
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE10deallocateB7v160006ERS4_PS3_m
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE10deallocateB7v160006ERS4_PS3_m: ; @_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE10deallocateB7v160006ERS4_PS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorINS_4pairIxxEEE10deallocateB7v160006EPS2_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE8capacityB7v160006Ev ; -- Begin function _ZNKSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE8capacityB7v160006Ev
	.globl	__ZNKSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE8capacityB7v160006Ev
	.weak_definition	__ZNKSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE8capacityB7v160006Ev
	.p2align	2
__ZNKSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE8capacityB7v160006Ev: ; @_ZNKSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE8capacityB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE9__end_capB7v160006Ev
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #16
	sdiv	x0, x8, x9
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE17__destruct_at_endB7v160006EPS2_ ; -- Begin function _ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE17__destruct_at_endB7v160006EPS2_
	.globl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE17__destruct_at_endB7v160006EPS2_
	.weak_definition	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE17__destruct_at_endB7v160006EPS2_
	.p2align	2
__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE17__destruct_at_endB7v160006EPS2_: ; @_ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE17__destruct_at_endB7v160006EPS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE17__destruct_at_endB7v160006EPS2_NS_17integral_constantIbLb0EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE17__destruct_at_endB7v160006EPS2_NS_17integral_constantIbLb0EEE ; -- Begin function _ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE17__destruct_at_endB7v160006EPS2_NS_17integral_constantIbLb0EEE
	.globl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE17__destruct_at_endB7v160006EPS2_NS_17integral_constantIbLb0EEE
	.weak_definition	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE17__destruct_at_endB7v160006EPS2_NS_17integral_constantIbLb0EEE
	.p2align	2
__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE17__destruct_at_endB7v160006EPS2_NS_17integral_constantIbLb0EEE: ; @_ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE17__destruct_at_endB7v160006EPS2_NS_17integral_constantIbLb0EEE
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB117_1
LBB117_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB117_4
	b	LBB117_2
LBB117_2:                               ;   in Loop: Header=BB117_1 Depth=1
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE7__allocB7v160006Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8, #16]
	subs	x0, x9, #16
	str	x0, [x8, #16]
	bl	__ZNSt3__112__to_addressB7v160006INS_4pairIxxEEEEPT_S4_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp80:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE7destroyB7v160006IS3_vEEvRS4_PT_
Ltmp81:
	b	LBB117_3
LBB117_3:                               ;   in Loop: Header=BB117_1 Depth=1
	b	LBB117_1
LBB117_4:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB117_5:
Ltmp82:
	bl	___clang_call_terminate
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table117:
Lexception11:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase6-Lttbaseref6
Lttbaseref6:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Ltmp80-Lfunc_begin11           ; >> Call Site 1 <<
	.uleb128 Ltmp81-Ltmp80                  ;   Call between Ltmp80 and Ltmp81
	.uleb128 Ltmp82-Lfunc_begin11           ;     jumps to Ltmp82
	.byte	1                               ;   On action: 1
Lcst_end11:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__19allocatorINS_4pairIxxEEE10deallocateB7v160006EPS2_m ; -- Begin function _ZNSt3__19allocatorINS_4pairIxxEEE10deallocateB7v160006EPS2_m
	.globl	__ZNSt3__19allocatorINS_4pairIxxEEE10deallocateB7v160006EPS2_m
	.weak_definition	__ZNSt3__19allocatorINS_4pairIxxEEE10deallocateB7v160006EPS2_m
	.p2align	2
__ZNSt3__19allocatorINS_4pairIxxEEE10deallocateB7v160006EPS2_m: ; @_ZNSt3__19allocatorINS_4pairIxxEEE10deallocateB7v160006EPS2_m
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #8]
	lsl	x1, x8, #4
Ltmp83:
	mov	x2, #8
	bl	__ZNSt3__119__libcpp_deallocateB7v160006EPvmm
Ltmp84:
	b	LBB118_1
LBB118_1:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB118_2:
Ltmp85:
	bl	___clang_call_terminate
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table118:
Lexception12:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase7-Lttbaseref7
Lttbaseref7:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Ltmp83-Lfunc_begin12           ; >> Call Site 1 <<
	.uleb128 Ltmp84-Ltmp83                  ;   Call between Ltmp83 and Ltmp84
	.uleb128 Ltmp85-Lfunc_begin12           ;     jumps to Ltmp85
	.byte	1                               ;   On action: 1
Lcst_end12:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase7:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119__libcpp_deallocateB7v160006EPvmm ; -- Begin function _ZNSt3__119__libcpp_deallocateB7v160006EPvmm
	.globl	__ZNSt3__119__libcpp_deallocateB7v160006EPvmm
	.weak_definition	__ZNSt3__119__libcpp_deallocateB7v160006EPvmm
	.p2align	2
__ZNSt3__119__libcpp_deallocateB7v160006EPvmm: ; @_ZNSt3__119__libcpp_deallocateB7v160006EPvmm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__127__do_deallocate_handle_sizeB7v160006IJEEEvPvmDpT_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__127__do_deallocate_handle_sizeB7v160006IJEEEvPvmDpT_ ; -- Begin function _ZNSt3__127__do_deallocate_handle_sizeB7v160006IJEEEvPvmDpT_
	.globl	__ZNSt3__127__do_deallocate_handle_sizeB7v160006IJEEEvPvmDpT_
	.weak_definition	__ZNSt3__127__do_deallocate_handle_sizeB7v160006IJEEEvPvmDpT_
	.p2align	2
__ZNSt3__127__do_deallocate_handle_sizeB7v160006IJEEEvPvmDpT_: ; @_ZNSt3__127__do_deallocate_handle_sizeB7v160006IJEEEvPvmDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__124__libcpp_operator_deleteB7v160006IJPvEEEvDpT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__libcpp_operator_deleteB7v160006IJPvEEEvDpT_ ; -- Begin function _ZNSt3__124__libcpp_operator_deleteB7v160006IJPvEEEvDpT_
	.globl	__ZNSt3__124__libcpp_operator_deleteB7v160006IJPvEEEvDpT_
	.weak_definition	__ZNSt3__124__libcpp_operator_deleteB7v160006IJPvEEEvDpT_
	.p2align	2
__ZNSt3__124__libcpp_operator_deleteB7v160006IJPvEEEvDpT_: ; @_ZNSt3__124__libcpp_operator_deleteB7v160006IJPvEEEvDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE9__end_capB7v160006Ev ; -- Begin function _ZNKSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE9__end_capB7v160006Ev
	.globl	__ZNKSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE9__end_capB7v160006Ev
	.weak_definition	__ZNKSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE9__end_capB7v160006Ev
	.p2align	2
__ZNKSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE9__end_capB7v160006Ev: ; @_ZNKSt3__114__split_bufferINS_4pairIxxEERNS_9allocatorIS2_EEE9__end_capB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	add	x0, x8, #24
	bl	__ZNKSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEE5firstB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEE5firstB7v160006Ev ; -- Begin function _ZNKSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEE5firstB7v160006Ev
	.globl	__ZNKSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEE5firstB7v160006Ev
	.weak_definition	__ZNKSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEE5firstB7v160006Ev
	.p2align	2
__ZNKSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEE5firstB7v160006Ev: ; @_ZNKSt3__117__compressed_pairIPNS_4pairIxxEERNS_9allocatorIS2_EEE5firstB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__122__compressed_pair_elemIPNS_4pairIxxEELi0ELb0EE5__getB7v160006Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEED2B7v160006Ev ; -- Begin function _ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEED2B7v160006Ev
	.globl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEED2B7v160006Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEED2B7v160006Ev
	.p2align	2
__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEED2B7v160006Ev: ; @_ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEED2B7v160006Ev
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception13
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
Ltmp86:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE16__destroy_vectorC1ERS5_
Ltmp87:
	b	LBB124_1
LBB124_1:
Ltmp88:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE16__destroy_vectorclB7v160006Ev
Ltmp89:
	b	LBB124_2
LBB124_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB124_3:
Ltmp90:
	bl	___clang_call_terminate
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table124:
Lexception13:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase8-Lttbaseref8
Lttbaseref8:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Ltmp86-Lfunc_begin13           ; >> Call Site 1 <<
	.uleb128 Ltmp89-Ltmp86                  ;   Call between Ltmp86 and Ltmp89
	.uleb128 Ltmp90-Lfunc_begin13           ;     jumps to Ltmp90
	.byte	1                               ;   On action: 1
Lcst_end13:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase8:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE16__destroy_vectorC1ERS5_ ; -- Begin function _ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE16__destroy_vectorC1ERS5_
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE16__destroy_vectorC1ERS5_
	.p2align	2
__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE16__destroy_vectorC1ERS5_: ; @_ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE16__destroy_vectorC1ERS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE16__destroy_vectorC2ERS5_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE16__destroy_vectorclB7v160006Ev ; -- Begin function _ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE16__destroy_vectorclB7v160006Ev
	.globl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE16__destroy_vectorclB7v160006Ev
	.weak_definition	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE16__destroy_vectorclB7v160006Ev
	.p2align	2
__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE16__destroy_vectorclB7v160006Ev: ; @_ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE16__destroy_vectorclB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE17__annotate_deleteB7v160006Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__118__debug_db_erase_cB7v160006INS_6vectorINS_4pairIxxEENS_9allocatorIS3_EEEEEEvPT_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB126_2
	b	LBB126_1
LBB126_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__clearB7v160006Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__allocB7v160006Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8]
	ldr	x9, [x9]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE8capacityB7v160006Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE10deallocateB7v160006ERS4_PS3_m
	b	LBB126_2
LBB126_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE16__destroy_vectorC2ERS5_ ; -- Begin function _ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE16__destroy_vectorC2ERS5_
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE16__destroy_vectorC2ERS5_
	.p2align	2
__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE16__destroy_vectorC2ERS5_: ; @_ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE16__destroy_vectorC2ERS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__debug_db_erase_cB7v160006INS_6vectorINS_4pairIxxEENS_9allocatorIS3_EEEEEEvPT_ ; -- Begin function _ZNSt3__118__debug_db_erase_cB7v160006INS_6vectorINS_4pairIxxEENS_9allocatorIS3_EEEEEEvPT_
	.globl	__ZNSt3__118__debug_db_erase_cB7v160006INS_6vectorINS_4pairIxxEENS_9allocatorIS3_EEEEEEvPT_
	.weak_definition	__ZNSt3__118__debug_db_erase_cB7v160006INS_6vectorINS_4pairIxxEENS_9allocatorIS3_EEEEEEvPT_
	.p2align	2
__ZNSt3__118__debug_db_erase_cB7v160006INS_6vectorINS_4pairIxxEENS_9allocatorIS3_EEEEEEvPT_: ; @_ZNSt3__118__debug_db_erase_cB7v160006INS_6vectorINS_4pairIxxEENS_9allocatorIS3_EEEEEEvPT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__clearB7v160006Ev ; -- Begin function _ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__clearB7v160006Ev
	.globl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__clearB7v160006Ev
	.weak_definition	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__clearB7v160006Ev
	.p2align	2
__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__clearB7v160006Ev: ; @_ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__clearB7v160006Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x1, [x0]
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE22__base_destruct_at_endB7v160006EPS2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE22__base_destruct_at_endB7v160006EPS2_ ; -- Begin function _ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE22__base_destruct_at_endB7v160006EPS2_
	.globl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE22__base_destruct_at_endB7v160006EPS2_
	.weak_definition	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE22__base_destruct_at_endB7v160006EPS2_
	.p2align	2
__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE22__base_destruct_at_endB7v160006EPS2_: ; @_ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE22__base_destruct_at_endB7v160006EPS2_
Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception14
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]
	b	LBB130_1
LBB130_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB130_4
	b	LBB130_2
LBB130_2:                               ;   in Loop: Header=BB130_1 Depth=1
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorINS_4pairIxxEENS_9allocatorIS2_EEE7__allocB7v160006Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #24]
	subs	x0, x8, #16
	str	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB7v160006INS_4pairIxxEEEEPT_S4_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp93:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIxxEEEEE7destroyB7v160006IS3_vEEvRS4_PT_
Ltmp94:
	b	LBB130_3
LBB130_3:                               ;   in Loop: Header=BB130_1 Depth=1
	b	LBB130_1
LBB130_4:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB130_5:
Ltmp95:
	bl	___clang_call_terminate
Lfunc_end14:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table130:
Lexception14:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase9-Lttbaseref9
Lttbaseref9:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end14-Lcst_begin14
Lcst_begin14:
	.uleb128 Ltmp93-Lfunc_begin14           ; >> Call Site 1 <<
	.uleb128 Ltmp94-Ltmp93                  ;   Call between Ltmp93 and Ltmp94
	.uleb128 Ltmp95-Lfunc_begin14           ;     jumps to Ltmp95
	.byte	1                               ;   On action: 1
Lcst_end14:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase9:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"vector"

.subsections_via_symbols

	.arch armv8-a
	.file	"armBranchSlow.cpp"
// GNU C++17 (Ubuntu 13.2.0-23ubuntu4) version 13.2.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.2.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=91 --param ggc-min-heapsize=115771
// options passed: -mlittle-endian -mabi=lp64 -O1 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"%d %ld\n"
#NO_APP
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB9874:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	stp	x19, x20, [sp, 16]	//,,
	stp	x21, x22, [sp, 32]	//,,
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	.cfi_offset 22, -8
// armBranchSlow.cpp:6:     srand(time(NULL));
	mov	x0, 0	//,
	bl	time		//
// armBranchSlow.cpp:6:     srand(time(NULL));
	bl	srand		//
	adrp	x21, arr	// tmp110,
	add	x21, x21, :lo12:arr	// ivtmp.48, tmp110,
	add	x20, x21, 126976	// _49, ivtmp.48,
	add	x20, x20, 1024	// _49, _49,
	mov	x19, x21	// ivtmp.48, ivtmp.48
.L2:
// armBranchSlow.cpp:8:         arr[i] = rand();
	bl	rand		//
// armBranchSlow.cpp:8:         arr[i] = rand();
	str	w0, [x19], 4	// tmp119, MEM[(int *)_47]
// armBranchSlow.cpp:7:     for(int i = 0; i < MAXN; ++i)
	cmp	x19, x20	// ivtmp.48, _49
	bne	.L2		//,
// armBranchSlow.cpp:10:     auto ini = chrono::high_resolution_clock::now();
	bl	_ZNSt6chrono3_V212system_clock3nowEv		//
	mov	x22, x0	// ini, tmp120
	mov	w3, 20	// ivtmp_8,
// armBranchSlow.cpp:9:     int sum = 0;
	mov	w19, 0	// sum,
.L3:
// armBranchSlow.cpp:6:     srand(time(NULL));
	mov	x0, x21	// ivtmp.34, ivtmp.48
.L5:
// armBranchSlow.cpp:13:             if(arr[i] > 0)
	ldr	w1, [x0], 4	//, MEM[(int *)_32]
// armBranchSlow.cpp:14:                 sum += arr[i];
	add	w2, w19, w1	// tmp116, sum, _4
	cmp	w1, 0	// _4,
	csel	w19, w2, w19, gt	// sum, tmp116, sum,
// armBranchSlow.cpp:12:         for(int i = 0; i < MAXN; ++i)
	cmp	x0, x20	// ivtmp.34, _49
	bne	.L5		//,
// armBranchSlow.cpp:11:     for(int j = 0; j < 20; ++j)
	subs	w3, w3, #1	// ivtmp_8, ivtmp_8,
	bne	.L3		//,
// armBranchSlow.cpp:15:     auto end = chrono::high_resolution_clock::now();
	bl	_ZNSt6chrono3_V212system_clock3nowEv		//
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	sub	x3, x0, x22	//, tmp121, ini
	mov	w2, w19	//, sum
	adrp	x1, .LC0	// tmp114,
	add	x1, x1, :lo12:.LC0	//, tmp114,
	mov	w0, 2	//,
	bl	__printf_chk		//
// armBranchSlow.cpp:18: }
	mov	w0, 0	//,
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x21, x22, [sp, 32]	//,,
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE9874:
	.size	main, .-main
	.global	arr
	.bss
	.align	3
	.type	arr, %object
	.size	arr, 128000
arr:
	.zero	128000
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits

	.arch armv8-a
	.file	"armSIMD.cpp"
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
// armSIMD.cpp:6:     srand(time(NULL));
	mov	x0, 0	//,
	bl	time		//
// armSIMD.cpp:6:     srand(time(NULL));
	bl	srand		//
	adrp	x19, arr	// tmp108,
	add	x19, x19, :lo12:arr	// ivtmp.33, tmp108,
	add	x21, x19, 126976	// _42, ivtmp.33,
	add	x21, x21, 1024	// _42, _42,
	mov	x20, x19	// ivtmp.41, ivtmp.33
.L2:
// armSIMD.cpp:8:         arr[i] = rand();
	bl	rand		//
// armSIMD.cpp:8:         arr[i] = rand();
	str	w0, [x20], 4	// tmp116, MEM[(int *)_40]
// armSIMD.cpp:7:     for(int i = 0; i < MAXN; ++i)
	cmp	x20, x21	// ivtmp.41, _42
	bne	.L2		//,
// armSIMD.cpp:10:     auto ini = chrono::high_resolution_clock::now();
	bl	_ZNSt6chrono3_V212system_clock3nowEv		//
	mov	x22, x0	// ini, tmp117
// armSIMD.cpp:9:     int sum = 0;
	mov	w20, 0	// sum,
.L3:
// armSIMD.cpp:12:         sum += arr[i];
	ldr	w1, [x19], 4	//, MEM[(int *)_26]
	add	w20, w20, w1	// sum, sum, MEM[(int *)_26]
// armSIMD.cpp:11:     for(int i = 0; i < MAXN; ++i)
	cmp	x19, x21	// ivtmp.33, _42
	bne	.L3		//,
// armSIMD.cpp:13:     auto end = chrono::high_resolution_clock::now();
	bl	_ZNSt6chrono3_V212system_clock3nowEv		//
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	sub	x3, x0, x22	//, tmp118, ini
	mov	w2, w20	//, sum
	adrp	x1, .LC0	// tmp113,
	add	x1, x1, :lo12:.LC0	//, tmp113,
	mov	w0, 2	//,
	bl	__printf_chk		//
// armSIMD.cpp:16: }
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

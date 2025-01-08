	.arch armv8-a
	.file	"armSIMD.cpp"
// GNU C++17 (Ubuntu 13.2.0-23ubuntu4) version 13.2.0 (aarch64-linux-gnu)
//	compiled by GNU C version 13.2.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

// GGC heuristics: --param ggc-min-expand=91 --param ggc-min-heapsize=115771
// options passed: -mlittle-endian -mabi=lp64 -mtune=cortex-a53 -O3 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection
	.text
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"%d %ld\n"
#NO_APP
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,15
	.global	main
	.type	main, %function
main:
.LFB9874:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
// armSIMD.cpp:6:     srand(time(NULL));
	mov	x0, 0	//,
// armSIMD.cpp:5: int main(){
	mov	x29, sp	//,
	stp	x19, x20, [sp, 16]	//,,
	str	x21, [sp, 32]	//,
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	.cfi_offset 21, -16
	adrp	x21, arr	// tmp119,
	add	x19, x21, :lo12:arr	// ivtmp.56, tmp119,
	str	d8, [sp, 40]	//,
	.cfi_offset 72, -8
	add	x20, x19, 126976	// _35, ivtmp.56,
// armSIMD.cpp:6:     srand(time(NULL));
	bl	time		//
	add	x20, x20, 1024	// _35, _35,
// armSIMD.cpp:6:     srand(time(NULL));
	bl	srand		//
	.p2align 3,,7
.L2:
// armSIMD.cpp:8:         arr[i] = rand();
	bl	rand		//
// armSIMD.cpp:8:         arr[i] = rand();
	str	w0, [x19], 4	// tmp121, MEM[(int *)_32]
// armSIMD.cpp:7:     for(int i = 0; i < MAXN; ++i)
	cmp	x20, x19	// _35, ivtmp.56
	bne	.L2		//,
// armSIMD.cpp:10:     auto ini = chrono::high_resolution_clock::now();
	bl	_ZNSt6chrono3_V212system_clock3nowEv		//
	mov	x19, x0	// ini, tmp122
	movi	v0.4s, 0	// vect_sum_21.34
// armSIMD.cpp:13:             sum += arr[i];
	add	x2, x21, :lo12:arr	// tmp113, tmp119,
	mov	x3, 62464	// tmp111,
	movk	x3, 0x1, lsl 16	// tmp111,,
// armSIMD.cpp:10:     auto ini = chrono::high_resolution_clock::now();
	mov	x1, 0	// ivtmp.47,
.L3:
// armSIMD.cpp:13:             sum += arr[i];
	ldr	q1, [x2, x1]	// vect__4.32, MEM <vector(4) int> [(int *)&arr + ivtmp.47_45 * 1]
	mov	w0, 20	// ivtmp_47,
	.p2align 3,,7
.L4:
// armSIMD.cpp:13:             sum += arr[i];
	add	v0.4s, v0.4s, v1.4s	// vect_sum_21.34, vect_sum_21.34, vect__4.32
// armSIMD.cpp:12:         for(int i = 0; i < MAXN; ++i)
	subs	w0, w0, #1	// ivtmp_47, ivtmp_47,
	bne	.L4		//,
	add	x1, x1, 16	// ivtmp.47, ivtmp.47,
	cmp	x1, x3	// ivtmp.47, tmp111
	bne	.L3		//,
	addv	s8, v0.4s	// _49, vect_sum_21.34
// armSIMD.cpp:14:     auto end = chrono::high_resolution_clock::now();
	bl	_ZNSt6chrono3_V212system_clock3nowEv		//
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	fmov	w2, s8	//, _49
	sub	x3, x0, x19	//, tmp123, ini
	adrp	x1, .LC0	// tmp117,
	mov	w0, 2	//,
	add	x1, x1, :lo12:.LC0	//, tmp117,
	bl	__printf_chk		//
// armSIMD.cpp:17: }
	ldp	x19, x20, [sp, 16]	//,,
	mov	w0, 0	//,
	ldr	x21, [sp, 32]	//,
	ldr	d8, [sp, 40]	//,
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 72
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE9874:
	.size	main, .-main
	.global	arr
	.bss
	.align	4
	.type	arr, %object
	.size	arr, 128000
arr:
	.zero	128000
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits

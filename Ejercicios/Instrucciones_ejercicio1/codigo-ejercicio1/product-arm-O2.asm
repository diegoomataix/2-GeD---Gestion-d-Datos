
product.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_ada_product>:
with System.IO;

procedure Product is 
   0:	b5f0      	push	{r4, r5, r6, r7, lr}
   2:	b097      	sub	sp, #92	; 0x5c
   4:	4921      	ldr	r1, [pc, #132]	; (8c <_ada_product+0x8c>)
   6:	eddf 5a22 	vldr	s11, [pc, #136]	; 90 <_ada_product+0x90>
   a:	ac06      	add	r4, sp, #24
   c:	f101 0620 	add.w	r6, r1, #32
  10:	f101 003c 	add.w	r0, r1, #60	; 0x3c
  14:	4625      	mov	r5, r4
  16:	ed91 6a00 	vldr	s12, [r1]
  1a:	ed51 6a01 	vldr	s13, [r1, #-4]
  1e:	4b1d      	ldr	r3, [pc, #116]	; (94 <_ada_product+0x94>)
  20:	462a      	mov	r2, r5
begin
   for I in 1..4 loop
      for J in 1..4 loop
         C (I, J) := 0.0;
         for K in 1..2 loop
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
  22:	ed53 7a04 	vldr	s15, [r3, #-16]
  26:	ecb3 7a01 	vldmia	r3!, {s14}
  2a:	eeb0 5a65 	vmov.f32	s10, s11
  2e:	eea7 5aa6 	vfma.f32	s10, s15, s13
                                       (4.0, 3.0, 2.0, 1.0));
   C : array (1..4, 1..4) of Float;

begin
   for I in 1..4 loop
      for J in 1..4 loop
  32:	4283      	cmp	r3, r0
         C (I, J) := 0.0;
         for K in 1..2 loop
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
  34:	eef0 7a45 	vmov.f32	s15, s10
  38:	eee7 7a06 	vfma.f32	s15, s14, s12
  3c:	ece2 7a01 	vstmia	r2!, {s15}
                                       (4.0, 3.0, 2.0, 1.0));
   C : array (1..4, 1..4) of Float;

begin
   for I in 1..4 loop
      for J in 1..4 loop
  40:	d1ef      	bne.n	22 <_ada_product+0x22>
   B : array (1..2, 1..4) of Float := ((1.0, 2.0, 3.0, 4.0),
                                       (4.0, 3.0, 2.0, 1.0));
   C : array (1..4, 1..4) of Float;

begin
   for I in 1..4 loop
  42:	3108      	adds	r1, #8
  44:	42b1      	cmp	r1, r6
  46:	f105 0510 	add.w	r5, r5, #16
  4a:	d1e4      	bne.n	16 <_ada_product+0x16>
  4c:	af16      	add	r7, sp, #88	; 0x58
  4e:	2601      	movs	r6, #1
  50:	f104 0510 	add.w	r5, r4, #16
         end loop;
      end loop;
   end loop;
   for I in 1..4 loop
      for J in 1..4 loop
         System.IO.Put (Float'Image (C (I, J)));
  54:	f854 0b04 	ldr.w	r0, [r4], #4
  58:	f7ff fffe 	bl	0 <__aeabi_f2d>
  5c:	2206      	movs	r2, #6
  5e:	ec41 0b10 	vmov	d0, r0, r1
  62:	490d      	ldr	r1, [pc, #52]	; (98 <_ada_product+0x98>)
  64:	a803      	add	r0, sp, #12
  66:	f7ff fffe 	bl	0 <system__img_real__image_floating_point>
  6a:	a901      	add	r1, sp, #4
  6c:	9002      	str	r0, [sp, #8]
  6e:	a803      	add	r0, sp, #12
  70:	9601      	str	r6, [sp, #4]
  72:	f7ff fffe 	bl	0 <system__io__put__3>
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
      end loop;
   end loop;
   for I in 1..4 loop
      for J in 1..4 loop
  76:	42a5      	cmp	r5, r4
  78:	d1ec      	bne.n	54 <_ada_product+0x54>
         System.IO.Put (Float'Image (C (I, J)));
      end loop;
      System.IO.New_Line;
  7a:	2001      	movs	r0, #1
  7c:	f7ff fffe 	bl	0 <system__io__new_line>
         for K in 1..2 loop
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
      end loop;
   end loop;
   for I in 1..4 loop
  80:	42bd      	cmp	r5, r7
  82:	462c      	mov	r4, r5
  84:	d1e4      	bne.n	50 <_ada_product+0x50>
      for J in 1..4 loop
         System.IO.Put (Float'Image (C (I, J)));
      end loop;
      System.IO.New_Line;
   end loop;
end Product;
  86:	b017      	add	sp, #92	; 0x5c
  88:	bdf0      	pop	{r4, r5, r6, r7, pc}
  8a:	bf00      	nop
  8c:	00000004 	.word	0x00000004
  90:	00000000 	.word	0x00000000
  94:	00000030 	.word	0x00000030
  98:	00000040 	.word	0x00000040

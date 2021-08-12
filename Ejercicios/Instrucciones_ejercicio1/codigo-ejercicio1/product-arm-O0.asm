
product.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_ada_product>:
with System.IO;

procedure Product is 
   0:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
   4:	b09b      	sub	sp, #108	; 0x6c
   6:	af00      	add	r7, sp, #0
   B : array (1..2, 1..4) of Float := ((1.0, 2.0, 3.0, 4.0),
                                       (4.0, 3.0, 2.0, 1.0));
   C : array (1..4, 1..4) of Float;

begin
   for I in 1..4 loop
   8:	2301      	movs	r3, #1
   a:	667b      	str	r3, [r7, #100]	; 0x64
   c:	6e7b      	ldr	r3, [r7, #100]	; 0x64
   e:	2b04      	cmp	r3, #4
  10:	dc6b      	bgt.n	ea <_ada_product+0xea>
      for J in 1..4 loop
  12:	2301      	movs	r3, #1
  14:	663b      	str	r3, [r7, #96]	; 0x60
  16:	6e3b      	ldr	r3, [r7, #96]	; 0x60
  18:	2b04      	cmp	r3, #4
  1a:	dc62      	bgt.n	e2 <_ada_product+0xe2>
         C (I, J) := 0.0;
  1c:	6e7b      	ldr	r3, [r7, #100]	; 0x64
  1e:	6e3a      	ldr	r2, [r7, #96]	; 0x60
  20:	f103 5380 	add.w	r3, r3, #268435456	; 0x10000000
  24:	3b01      	subs	r3, #1
  26:	009b      	lsls	r3, r3, #2
  28:	4413      	add	r3, r2
  2a:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
  2e:	3b01      	subs	r3, #1
  30:	009b      	lsls	r3, r3, #2
  32:	f107 0268 	add.w	r2, r7, #104	; 0x68
  36:	4413      	add	r3, r2
  38:	3b5c      	subs	r3, #92	; 0x5c
  3a:	f04f 0200 	mov.w	r2, #0
  3e:	601a      	str	r2, [r3, #0]
         for K in 1..2 loop
  40:	2301      	movs	r3, #1
  42:	65fb      	str	r3, [r7, #92]	; 0x5c
  44:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
  46:	2b02      	cmp	r3, #2
  48:	dc47      	bgt.n	da <_ada_product+0xda>
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
  4a:	6e79      	ldr	r1, [r7, #100]	; 0x64
  4c:	6e3a      	ldr	r2, [r7, #96]	; 0x60
  4e:	6e7b      	ldr	r3, [r7, #100]	; 0x64
  50:	6e38      	ldr	r0, [r7, #96]	; 0x60
  52:	f103 5380 	add.w	r3, r3, #268435456	; 0x10000000
  56:	3b01      	subs	r3, #1
  58:	009b      	lsls	r3, r3, #2
  5a:	4403      	add	r3, r0
  5c:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
  60:	3b01      	subs	r3, #1
  62:	009b      	lsls	r3, r3, #2
  64:	f107 0068 	add.w	r0, r7, #104	; 0x68
  68:	4403      	add	r3, r0
  6a:	3b5c      	subs	r3, #92	; 0x5c
  6c:	ed93 7a00 	vldr	s14, [r3]
  70:	6e7b      	ldr	r3, [r7, #100]	; 0x64
  72:	6df8      	ldr	r0, [r7, #92]	; 0x5c
  74:	4c40      	ldr	r4, [pc, #256]	; (178 <_ada_product+0x178>)
  76:	f103 5300 	add.w	r3, r3, #536870912	; 0x20000000
  7a:	3b01      	subs	r3, #1
  7c:	005b      	lsls	r3, r3, #1
  7e:	4403      	add	r3, r0
  80:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
  84:	3b01      	subs	r3, #1
  86:	009b      	lsls	r3, r3, #2
  88:	4423      	add	r3, r4
  8a:	edd3 6a00 	vldr	s13, [r3]
  8e:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
  90:	6e38      	ldr	r0, [r7, #96]	; 0x60
  92:	4c3a      	ldr	r4, [pc, #232]	; (17c <_ada_product+0x17c>)
  94:	f103 5380 	add.w	r3, r3, #268435456	; 0x10000000
  98:	3b01      	subs	r3, #1
  9a:	009b      	lsls	r3, r3, #2
  9c:	4403      	add	r3, r0
  9e:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
  a2:	3b01      	subs	r3, #1
  a4:	009b      	lsls	r3, r3, #2
  a6:	4423      	add	r3, r4
  a8:	edd3 7a00 	vldr	s15, [r3]
  ac:	ee66 7aa7 	vmul.f32	s15, s13, s15
  b0:	ee77 7a27 	vadd.f32	s15, s14, s15
  b4:	f101 5380 	add.w	r3, r1, #268435456	; 0x10000000
  b8:	3b01      	subs	r3, #1
  ba:	009b      	lsls	r3, r3, #2
  bc:	4413      	add	r3, r2
  be:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
  c2:	3b01      	subs	r3, #1
  c4:	009b      	lsls	r3, r3, #2
  c6:	f107 0268 	add.w	r2, r7, #104	; 0x68
  ca:	4413      	add	r3, r2
  cc:	3b5c      	subs	r3, #92	; 0x5c
  ce:	edc3 7a00 	vstr	s15, [r3]

begin
   for I in 1..4 loop
      for J in 1..4 loop
         C (I, J) := 0.0;
         for K in 1..2 loop
  d2:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
  d4:	3301      	adds	r3, #1
  d6:	65fb      	str	r3, [r7, #92]	; 0x5c
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
  d8:	e7b4      	b.n	44 <_ada_product+0x44>
                                       (4.0, 3.0, 2.0, 1.0));
   C : array (1..4, 1..4) of Float;

begin
   for I in 1..4 loop
      for J in 1..4 loop
  da:	6e3b      	ldr	r3, [r7, #96]	; 0x60
  dc:	3301      	adds	r3, #1
  de:	663b      	str	r3, [r7, #96]	; 0x60
         C (I, J) := 0.0;
         for K in 1..2 loop
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
      end loop;
  e0:	e799      	b.n	16 <_ada_product+0x16>
   B : array (1..2, 1..4) of Float := ((1.0, 2.0, 3.0, 4.0),
                                       (4.0, 3.0, 2.0, 1.0));
   C : array (1..4, 1..4) of Float;

begin
   for I in 1..4 loop
  e2:	6e7b      	ldr	r3, [r7, #100]	; 0x64
  e4:	3301      	adds	r3, #1
  e6:	667b      	str	r3, [r7, #100]	; 0x64
         C (I, J) := 0.0;
         for K in 1..2 loop
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
      end loop;
   end loop;
  e8:	e790      	b.n	c <_ada_product+0xc>
   for I in 1..4 loop
  ea:	2301      	movs	r3, #1
  ec:	65bb      	str	r3, [r7, #88]	; 0x58
  ee:	6dbb      	ldr	r3, [r7, #88]	; 0x58
  f0:	2b04      	cmp	r3, #4
  f2:	dc3d      	bgt.n	170 <_ada_product+0x170>
      for J in 1..4 loop
  f4:	2301      	movs	r3, #1
  f6:	657b      	str	r3, [r7, #84]	; 0x54
  f8:	6d7b      	ldr	r3, [r7, #84]	; 0x54
  fa:	2b04      	cmp	r3, #4
  fc:	dc31      	bgt.n	162 <_ada_product+0x162>
         System.IO.Put (Float'Image (C (I, J)));
  fe:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 100:	6d7a      	ldr	r2, [r7, #84]	; 0x54
 102:	f103 5380 	add.w	r3, r3, #268435456	; 0x10000000
 106:	3b01      	subs	r3, #1
 108:	009b      	lsls	r3, r3, #2
 10a:	4413      	add	r3, r2
 10c:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
 110:	3b01      	subs	r3, #1
 112:	009b      	lsls	r3, r3, #2
 114:	f107 0268 	add.w	r2, r7, #104	; 0x68
 118:	4413      	add	r3, r2
 11a:	3b5c      	subs	r3, #92	; 0x5c
 11c:	681b      	ldr	r3, [r3, #0]
 11e:	4618      	mov	r0, r3
 120:	f7ff fffe 	bl	0 <__aeabi_f2d>
 124:	460a      	mov	r2, r1
 126:	4601      	mov	r1, r0
 128:	463b      	mov	r3, r7
 12a:	461d      	mov	r5, r3
 12c:	4e14      	ldr	r6, [pc, #80]	; (180 <_ada_product+0x180>)
 12e:	ec42 1b10 	vmov	d0, r1, r2
 132:	4628      	mov	r0, r5
 134:	4631      	mov	r1, r6
 136:	2206      	movs	r2, #6
 138:	f7ff fffe 	bl	0 <system__img_real__image_floating_point>
 13c:	4603      	mov	r3, r0
 13e:	461a      	mov	r2, r3
 140:	463b      	mov	r3, r7
 142:	4698      	mov	r8, r3
 144:	2301      	movs	r3, #1
 146:	64fb      	str	r3, [r7, #76]	; 0x4c
 148:	4613      	mov	r3, r2
 14a:	653b      	str	r3, [r7, #80]	; 0x50
 14c:	f107 034c 	add.w	r3, r7, #76	; 0x4c
 150:	4699      	mov	r9, r3
 152:	4640      	mov	r0, r8
 154:	4649      	mov	r1, r9
 156:	f7ff fffe 	bl	0 <system__io__put__3>
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
      end loop;
   end loop;
   for I in 1..4 loop
      for J in 1..4 loop
 15a:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 15c:	3301      	adds	r3, #1
 15e:	657b      	str	r3, [r7, #84]	; 0x54
         System.IO.Put (Float'Image (C (I, J)));
      end loop;
 160:	e7ca      	b.n	f8 <_ada_product+0xf8>
      System.IO.New_Line;
 162:	2001      	movs	r0, #1
 164:	f7ff fffe 	bl	0 <system__io__new_line>
         for K in 1..2 loop
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
      end loop;
   end loop;
   for I in 1..4 loop
 168:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 16a:	3301      	adds	r3, #1
 16c:	65bb      	str	r3, [r7, #88]	; 0x58
      for J in 1..4 loop
         System.IO.Put (Float'Image (C (I, J)));
      end loop;
      System.IO.New_Line;
   end loop;
 16e:	e7be      	b.n	ee <_ada_product+0xee>
end Product;
 170:	376c      	adds	r7, #108	; 0x6c
 172:	46bd      	mov	sp, r7
 174:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 178:	00000008 	.word	0x00000008
 17c:	00000028 	.word	0x00000028
 180:	00000000 	.word	0x00000000

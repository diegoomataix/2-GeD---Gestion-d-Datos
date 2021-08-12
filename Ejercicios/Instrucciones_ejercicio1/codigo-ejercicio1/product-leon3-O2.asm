
product:     file format elf32-sparc


Disassembly of section .text:

4000154c <_ada_product>:
with System.IO;

procedure Product is 
4000154c:	9d e3 bf 38 	save  %sp, -200, %sp
40001550:	37 10 00 4e 	sethi  %hi(0x40013800), %i3
40001554:	3b 10 00 4e 	sethi  %hi(0x40013800), %i5
40001558:	b6 16 e0 58 	or  %i3, 0x58, %i3
4000155c:	2d 10 00 4e 	sethi  %hi(0x40013800), %l6
   B : array (1..2, 1..4) of Float := ((1.0, 2.0, 3.0, 4.0),
                                       (4.0, 3.0, 2.0, 1.0));
   C : array (1..4, 1..4) of Float;

begin
   for I in 1..4 loop
40001560:	ae 10 20 00 	clr  %l7
40001564:	ba 17 60 78 	or  %i5, 0x78, %i5
40001568:	b8 07 bf 98 	add  %fp, -104, %i4
4000156c:	ac 15 a0 98 	or  %l6, 0x98, %l6
40001570:	aa 06 e0 10 	add  %i3, 0x10, %l5
40001574:	ae 05 e0 01 	inc  %l7
40001578:	a0 10 00 1b 	mov  %i3, %l0
4000157c:	a2 05 ff ff 	add  %l7, -1, %l1
40001580:	83 2c 60 03 	sll  %l1, 3, %g1
with System.IO;

procedure Product is 
40001584:	a3 2c 60 04 	sll  %l1, 4, %l1
40001588:	84 07 40 01 	add  %i5, %g1, %g2
4000158c:	e8 07 40 01 	ld  [ %i5 + %g1 ], %l4
40001590:	e6 00 a0 04 	ld  [ %g2 + 4 ], %l3
40001594:	a2 07 00 11 	add  %i4, %l1, %l1
begin
   for I in 1..4 loop
      for J in 1..4 loop
         C (I, J) := 0.0;
         for K in 1..2 loop
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
40001598:	d2 04 00 00 	ld  [ %l0 ], %o1
4000159c:	40 00 41 9e 	call  40011c14 <__mulsf3>
400015a0:	90 10 00 14 	mov  %l4, %o0
400015a4:	40 00 41 73 	call  40011b70 <__addsf3>
400015a8:	d2 05 80 00 	ld  [ %l6 ], %o1
400015ac:	d2 04 20 10 	ld  [ %l0 + 0x10 ], %o1
400015b0:	a4 10 00 08 	mov  %o0, %l2
400015b4:	40 00 41 98 	call  40011c14 <__mulsf3>
400015b8:	90 10 00 13 	mov  %l3, %o0
400015bc:	40 00 41 6d 	call  40011b70 <__addsf3>
400015c0:	92 10 00 12 	mov  %l2, %o1
400015c4:	d0 24 40 00 	st  %o0, [ %l1 ]
                                       (4.0, 3.0, 2.0, 1.0));
   C : array (1..4, 1..4) of Float;

begin
   for I in 1..4 loop
      for J in 1..4 loop
400015c8:	a0 04 20 04 	add  %l0, 4, %l0
400015cc:	80 a4 00 15 	cmp  %l0, %l5
400015d0:	12 bf ff f2 	bne  40001598 <_ada_product+0x4c>
400015d4:	a2 04 60 04 	add  %l1, 4, %l1
   B : array (1..2, 1..4) of Float := ((1.0, 2.0, 3.0, 4.0),
                                       (4.0, 3.0, 2.0, 1.0));
   C : array (1..4, 1..4) of Float;

begin
   for I in 1..4 loop
400015d8:	80 a5 e0 04 	cmp  %l7, 4
400015dc:	12 bf ff e7 	bne  40001578 <_ada_product+0x2c>
400015e0:	ae 05 e0 01 	inc  %l7
400015e4:	2f 10 00 4e 	sethi  %hi(0x40013800), %l7
400015e8:	a4 07 bf d8 	add  %fp, -40, %l2
         for K in 1..2 loop
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
      end loop;
   end loop;
   for I in 1..4 loop
400015ec:	ba 10 20 00 	clr  %i5
400015f0:	ae 15 e0 50 	or  %l7, 0x50, %l7
400015f4:	ac 07 bf f8 	add  %fp, -8, %l6
400015f8:	aa 07 bf e8 	add  %fp, -24, %l5
400015fc:	a8 07 bf f0 	add  %fp, -16, %l4
40001600:	a6 10 20 01 	mov  1, %l3
40001604:	ba 07 60 01 	inc  %i5
      for J in 1..4 loop
40001608:	a2 10 20 00 	clr  %l1
with System.IO;

procedure Product is 
4000160c:	a0 07 7f ff 	add  %i5, -1, %l0
40001610:	a1 2c 20 04 	sll  %l0, 4, %l0
40001614:	a0 07 00 10 	add  %i4, %l0, %l0
         end loop;
      end loop;
   end loop;
   for I in 1..4 loop
      for J in 1..4 loop
         System.IO.Put (Float'Image (C (I, J)));
40001618:	40 00 41 f6 	call  40011df0 <__extendsfdf2>
4000161c:	d0 04 00 00 	ld  [ %l0 ], %o0
40001620:	94 10 00 16 	mov  %l6, %o2
40001624:	96 10 20 06 	mov  6, %o3
40001628:	e4 27 bf f8 	st  %l2, [ %fp + -8 ]
4000162c:	40 00 21 dd 	call  40009da0 <system__img_real__image_floating_point>
40001630:	ee 27 bf fc 	st  %l7, [ %fp + -4 ]
40001634:	e4 27 bf f0 	st  %l2, [ %fp + -16 ]
40001638:	d0 27 bf ec 	st  %o0, [ %fp + -20 ]
4000163c:	e6 27 bf e8 	st  %l3, [ %fp + -24 ]
40001640:	ea 27 bf f4 	st  %l5, [ %fp + -12 ]
40001644:	40 00 28 f0 	call  4000ba04 <system__io__put__3>
40001648:	90 10 00 14 	mov  %l4, %o0
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
      end loop;
   end loop;
   for I in 1..4 loop
      for J in 1..4 loop
4000164c:	a2 04 60 01 	inc  %l1
40001650:	80 a4 60 04 	cmp  %l1, 4
40001654:	12 bf ff f1 	bne  40001618 <_ada_product+0xcc>
40001658:	a0 04 20 04 	add  %l0, 4, %l0
         System.IO.Put (Float'Image (C (I, J)));
      end loop;
      System.IO.New_Line;
4000165c:	40 00 28 90 	call  4000b89c <system__io__new_line>
40001660:	90 10 20 01 	mov  1, %o0
         for K in 1..2 loop
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
      end loop;
   end loop;
   for I in 1..4 loop
40001664:	80 a7 60 04 	cmp  %i5, 4
40001668:	12 bf ff e8 	bne  40001608 <_ada_product+0xbc>
4000166c:	ba 07 60 01 	inc  %i5
      for J in 1..4 loop
         System.IO.Put (Float'Image (C (I, J)));
      end loop;
      System.IO.New_Line;
   end loop;
end Product;
40001670:	81 c7 e0 08 	ret 
40001674:	81 e8 00 00 	restore 

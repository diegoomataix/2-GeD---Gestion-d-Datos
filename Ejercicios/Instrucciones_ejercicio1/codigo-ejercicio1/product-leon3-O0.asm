
product:     file format elf32-sparc


Disassembly of section .text:

40001630 <_ada_product>:
with System.IO;

procedure Product is 
40001630:	9d e3 bf 20 	save  %sp, -224, %sp
   B : array (1..2, 1..4) of Float := ((1.0, 2.0, 3.0, 4.0),
                                       (4.0, 3.0, 2.0, 1.0));
   C : array (1..4, 1..4) of Float;

begin
   for I in 1..4 loop
40001634:	82 10 20 01 	mov  1, %g1
40001638:	c2 27 bf fc 	st  %g1, [ %fp + -4 ]
4000163c:	c2 07 bf fc 	ld  [ %fp + -4 ], %g1
40001640:	80 a0 60 04 	cmp  %g1, 4
40001644:	14 80 00 5a 	bg  400017ac <_ada_product+0x17c>
40001648:	01 00 00 00 	nop 
      for J in 1..4 loop
4000164c:	82 10 20 01 	mov  1, %g1	! 1 <_PROM_START+0x1>
40001650:	c2 27 bf f8 	st  %g1, [ %fp + -8 ]
40001654:	c2 07 bf f8 	ld  [ %fp + -8 ], %g1
40001658:	80 a0 60 04 	cmp  %g1, 4
4000165c:	14 80 00 4f 	bg  40001798 <_ada_product+0x168>
40001660:	01 00 00 00 	nop 
         C (I, J) := 0.0;
40001664:	c4 07 bf fc 	ld  [ %fp + -4 ], %g2
40001668:	c2 07 bf f8 	ld  [ %fp + -8 ], %g1
4000166c:	84 00 bf ff 	add  %g2, -1, %g2
40001670:	85 28 a0 02 	sll  %g2, 2, %g2
40001674:	82 00 80 01 	add  %g2, %g1, %g1
40001678:	82 00 7f ff 	add  %g1, -1, %g1
4000167c:	83 28 60 02 	sll  %g1, 2, %g1
40001680:	82 07 80 01 	add  %fp, %g1, %g1
40001684:	05 10 00 4e 	sethi  %hi(0x40013800), %g2
40001688:	84 10 a2 d8 	or  %g2, 0x2d8, %g2	! 40013ad8 <ada_main__local_interrupt_states+0xf>
4000168c:	c4 00 80 00 	ld  [ %g2 ], %g2
40001690:	c4 20 7f 90 	st  %g2, [ %g1 + -112 ]
         for K in 1..2 loop
40001694:	82 10 20 01 	mov  1, %g1
40001698:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
4000169c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
400016a0:	80 a0 60 02 	cmp  %g1, 2
400016a4:	14 80 00 38 	bg  40001784 <_ada_product+0x154>
400016a8:	01 00 00 00 	nop 
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
400016ac:	e6 07 bf fc 	ld  [ %fp + -4 ], %l3
400016b0:	e4 07 bf f8 	ld  [ %fp + -8 ], %l2
400016b4:	c4 07 bf fc 	ld  [ %fp + -4 ], %g2
400016b8:	c2 07 bf f8 	ld  [ %fp + -8 ], %g1
400016bc:	84 00 bf ff 	add  %g2, -1, %g2
400016c0:	85 28 a0 02 	sll  %g2, 2, %g2
400016c4:	82 00 80 01 	add  %g2, %g1, %g1
400016c8:	82 00 7f ff 	add  %g1, -1, %g1
400016cc:	83 28 60 02 	sll  %g1, 2, %g1
400016d0:	82 07 80 01 	add  %fp, %g1, %g1
400016d4:	e8 00 7f 90 	ld  [ %g1 + -112 ], %l4
400016d8:	c2 07 bf fc 	ld  [ %fp + -4 ], %g1
400016dc:	c6 07 bf f4 	ld  [ %fp + -12 ], %g3
400016e0:	05 10 00 4e 	sethi  %hi(0x40013800), %g2
400016e4:	84 10 a2 dc 	or  %g2, 0x2dc, %g2	! 40013adc <a.1561>
400016e8:	82 00 7f ff 	add  %g1, -1, %g1
400016ec:	82 00 40 01 	add  %g1, %g1, %g1
400016f0:	82 00 40 03 	add  %g1, %g3, %g1
400016f4:	82 00 7f ff 	add  %g1, -1, %g1
400016f8:	83 28 60 02 	sll  %g1, 2, %g1
400016fc:	c4 00 80 01 	ld  [ %g2 + %g1 ], %g2
40001700:	c8 07 bf f4 	ld  [ %fp + -12 ], %g4
40001704:	c2 07 bf f8 	ld  [ %fp + -8 ], %g1
40001708:	07 10 00 4e 	sethi  %hi(0x40013800), %g3
4000170c:	86 10 e2 fc 	or  %g3, 0x2fc, %g3	! 40013afc <b.1610>
40001710:	88 01 3f ff 	add  %g4, -1, %g4
40001714:	89 29 20 02 	sll  %g4, 2, %g4
40001718:	82 01 00 01 	add  %g4, %g1, %g1
4000171c:	82 00 7f ff 	add  %g1, -1, %g1
40001720:	83 28 60 02 	sll  %g1, 2, %g1
40001724:	c2 00 c0 01 	ld  [ %g3 + %g1 ], %g1
40001728:	90 10 00 02 	mov  %g2, %o0
4000172c:	92 10 00 01 	mov  %g1, %o1
40001730:	40 00 41 d8 	call  40011e90 <__mulsf3>
40001734:	01 00 00 00 	nop 
40001738:	82 10 00 08 	mov  %o0, %g1
4000173c:	90 10 00 14 	mov  %l4, %o0
40001740:	92 10 00 01 	mov  %g1, %o1
40001744:	40 00 41 aa 	call  40011dec <__addsf3>
40001748:	01 00 00 00 	nop 
4000174c:	82 10 00 08 	mov  %o0, %g1
40001750:	84 10 00 01 	mov  %g1, %g2
40001754:	82 04 ff ff 	add  %l3, -1, %g1
40001758:	83 28 60 02 	sll  %g1, 2, %g1
4000175c:	82 00 40 12 	add  %g1, %l2, %g1
40001760:	82 00 7f ff 	add  %g1, -1, %g1
40001764:	83 28 60 02 	sll  %g1, 2, %g1
40001768:	82 07 80 01 	add  %fp, %g1, %g1
4000176c:	c4 20 7f 90 	st  %g2, [ %g1 + -112 ]

begin
   for I in 1..4 loop
      for J in 1..4 loop
         C (I, J) := 0.0;
         for K in 1..2 loop
40001770:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
40001774:	82 00 60 01 	inc  %g1
40001778:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
4000177c:	10 bf ff c8 	b  4000169c <_ada_product+0x6c>
40001780:	01 00 00 00 	nop 
                                       (4.0, 3.0, 2.0, 1.0));
   C : array (1..4, 1..4) of Float;

begin
   for I in 1..4 loop
      for J in 1..4 loop
40001784:	c2 07 bf f8 	ld  [ %fp + -8 ], %g1
40001788:	82 00 60 01 	inc  %g1
4000178c:	c2 27 bf f8 	st  %g1, [ %fp + -8 ]
         C (I, J) := 0.0;
         for K in 1..2 loop
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
      end loop;
40001790:	10 bf ff b1 	b  40001654 <_ada_product+0x24>
40001794:	01 00 00 00 	nop 
   B : array (1..2, 1..4) of Float := ((1.0, 2.0, 3.0, 4.0),
                                       (4.0, 3.0, 2.0, 1.0));
   C : array (1..4, 1..4) of Float;

begin
   for I in 1..4 loop
40001798:	c2 07 bf fc 	ld  [ %fp + -4 ], %g1
4000179c:	82 00 60 01 	inc  %g1
400017a0:	c2 27 bf fc 	st  %g1, [ %fp + -4 ]
         C (I, J) := 0.0;
         for K in 1..2 loop
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
      end loop;
   end loop;
400017a4:	10 bf ff a6 	b  4000163c <_ada_product+0xc>
400017a8:	01 00 00 00 	nop 
   for I in 1..4 loop
400017ac:	82 10 20 01 	mov  1, %g1	! 1 <_PROM_START+0x1>
400017b0:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
400017b4:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
400017b8:	80 a0 60 04 	cmp  %g1, 4
400017bc:	14 80 00 4a 	bg  400018e4 <_ada_product+0x2b4>
400017c0:	01 00 00 00 	nop 
      for J in 1..4 loop
400017c4:	82 10 20 01 	mov  1, %g1	! 1 <_PROM_START+0x1>
400017c8:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
400017cc:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
400017d0:	80 a0 60 04 	cmp  %g1, 4
400017d4:	14 80 00 3c 	bg  400018c4 <_ada_product+0x294>
400017d8:	01 00 00 00 	nop 
         System.IO.Put (Float'Image (C (I, J)));
400017dc:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
400017e0:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
400017e4:	84 00 bf ff 	add  %g2, -1, %g2
400017e8:	85 28 a0 02 	sll  %g2, 2, %g2
400017ec:	82 00 80 01 	add  %g2, %g1, %g1
400017f0:	82 00 7f ff 	add  %g1, -1, %g1
400017f4:	83 28 60 02 	sll  %g1, 2, %g1
400017f8:	82 07 80 01 	add  %fp, %g1, %g1
400017fc:	c2 00 7f 90 	ld  [ %g1 + -112 ], %g1
40001800:	90 10 00 01 	mov  %g1, %o0
40001804:	40 00 42 1a 	call  4001206c <__extendsfdf2>
40001808:	01 00 00 00 	nop 
4000180c:	84 10 00 08 	mov  %o0, %g2
40001810:	86 10 00 09 	mov  %o1, %g3
40001814:	82 07 bf 80 	add  %fp, -128, %g1
40001818:	c2 27 bf d0 	st  %g1, [ %fp + -48 ]
4000181c:	03 10 00 4e 	sethi  %hi(0x40013800), %g1
40001820:	82 10 62 d0 	or  %g1, 0x2d0, %g1	! 40013ad0 <ada_main__local_interrupt_states+0x7>
40001824:	c2 27 bf d4 	st  %g1, [ %fp + -44 ]
40001828:	82 07 bf d0 	add  %fp, -48, %g1
4000182c:	90 10 00 02 	mov  %g2, %o0
40001830:	92 10 00 03 	mov  %g3, %o1
40001834:	94 10 00 01 	mov  %g1, %o2
40001838:	96 10 20 06 	mov  6, %o3
4000183c:	40 00 21 f8 	call  4000a01c <system__img_real__image_floating_point>
40001840:	01 00 00 00 	nop 
40001844:	82 10 00 08 	mov  %o0, %g1
40001848:	84 10 00 01 	mov  %g1, %g2
4000184c:	80 a0 a0 00 	cmp  %g2, 0
40001850:	84 10 00 01 	mov  %g1, %g2
40001854:	80 a0 a0 00 	cmp  %g2, 0
40001858:	16 80 00 03 	bge  40001864 <_ada_product+0x234>
4000185c:	01 00 00 00 	nop 
40001860:	84 10 20 00 	clr  %g2	! 0 <_PROM_START>
40001864:	86 10 00 02 	mov  %g2, %g3
40001868:	84 10 20 00 	clr  %g2
4000186c:	89 30 e0 1d 	srl  %g3, 0x1d, %g4
40001870:	a1 28 a0 03 	sll  %g2, 3, %l0
40001874:	a0 11 00 10 	or  %g4, %l0, %l0
40001878:	a3 28 e0 03 	sll  %g3, 3, %l1
4000187c:	84 10 00 01 	mov  %g1, %g2
40001880:	80 a0 a0 00 	cmp  %g2, 0
40001884:	84 07 bf 80 	add  %fp, -128, %g2
40001888:	c4 27 bf d8 	st  %g2, [ %fp + -40 ]
4000188c:	84 10 20 01 	mov  1, %g2
40001890:	c4 27 bf e4 	st  %g2, [ %fp + -28 ]
40001894:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
40001898:	82 07 bf e4 	add  %fp, -28, %g1
4000189c:	c2 27 bf dc 	st  %g1, [ %fp + -36 ]
400018a0:	82 07 bf d8 	add  %fp, -40, %g1
400018a4:	90 10 00 01 	mov  %g1, %o0
400018a8:	40 00 28 f6 	call  4000bc80 <system__io__put__3>
400018ac:	01 00 00 00 	nop 
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
      end loop;
   end loop;
   for I in 1..4 loop
      for J in 1..4 loop
400018b0:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
400018b4:	82 00 60 01 	inc  %g1
400018b8:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
         System.IO.Put (Float'Image (C (I, J)));
      end loop;
400018bc:	10 bf ff c4 	b  400017cc <_ada_product+0x19c>
400018c0:	01 00 00 00 	nop 
      System.IO.New_Line;
400018c4:	90 10 20 01 	mov  1, %o0	! 1 <_PROM_START+0x1>
400018c8:	40 00 28 94 	call  4000bb18 <system__io__new_line>
400018cc:	01 00 00 00 	nop 
         for K in 1..2 loop
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
      end loop;
   end loop;
   for I in 1..4 loop
400018d0:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
400018d4:	82 00 60 01 	inc  %g1
400018d8:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
      for J in 1..4 loop
         System.IO.Put (Float'Image (C (I, J)));
      end loop;
      System.IO.New_Line;
   end loop;
400018dc:	10 bf ff b6 	b  400017b4 <_ada_product+0x184>
400018e0:	01 00 00 00 	nop 
end Product;
400018e4:	01 00 00 00 	nop 
400018e8:	81 e8 00 00 	restore 
400018ec:	81 c3 e0 08 	retl 
400018f0:	01 00 00 00 	nop 

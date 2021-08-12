
product:     file format elf32-i386


Disassembly of section .text:

080495e0 <_ada_product>:
with System.IO;

procedure Product is 
 80495e0:	55                   	push   %ebp
 80495e1:	57                   	push   %edi
 80495e2:	56                   	push   %esi
 80495e3:	53                   	push   %ebx
 80495e4:	bb 60 72 05 08       	mov    $0x8057260,%ebx
 80495e9:	81 ec 9c 00 00 00    	sub    $0x9c,%esp
 80495ef:	8d 6c 24 50          	lea    0x50(%esp),%ebp
 80495f3:	89 e9                	mov    %ebp,%ecx
 80495f5:	d9 ee                	fldz   
 80495f7:	d9 43 04             	flds   0x4(%ebx)
                                       (4.0, 3.0, 2.0, 1.0));
   C : array (1..4, 1..4) of Float;

begin
   for I in 1..4 loop
      for J in 1..4 loop
 80495fa:	31 c0                	xor    %eax,%eax
 80495fc:	d9 03                	flds   (%ebx)
 80495fe:	83 c0 01             	add    $0x1,%eax
         C (I, J) := 0.0;
         for K in 1..2 loop
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
 8049601:	d9 04 85 7c 72 05 08 	flds   0x805727c(,%eax,4)
                                       (4.0, 3.0, 2.0, 1.0));
   C : array (1..4, 1..4) of Float;

begin
   for I in 1..4 loop
      for J in 1..4 loop
 8049608:	83 f8 04             	cmp    $0x4,%eax
         C (I, J) := 0.0;
         for K in 1..2 loop
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
 804960b:	d8 c9                	fmul   %st(1),%st
 804960d:	d8 c3                	fadd   %st(3),%st
 804960f:	d9 04 85 8c 72 05 08 	flds   0x805728c(,%eax,4)
 8049616:	d8 cb                	fmul   %st(3),%st
 8049618:	de c1                	faddp  %st,%st(1)
 804961a:	d9 5c 81 fc          	fstps  -0x4(%ecx,%eax,4)
                                       (4.0, 3.0, 2.0, 1.0));
   C : array (1..4, 1..4) of Float;

begin
   for I in 1..4 loop
      for J in 1..4 loop
 804961e:	75 de                	jne    80495fe <_ada_product+0x1e>
   B : array (1..2, 1..4) of Float := ((1.0, 2.0, 3.0, 4.0),
                                       (4.0, 3.0, 2.0, 1.0));
   C : array (1..4, 1..4) of Float;

begin
   for I in 1..4 loop
 8049620:	dd d8                	fstp   %st(0)
 8049622:	dd d8                	fstp   %st(0)
 8049624:	83 c3 08             	add    $0x8,%ebx
 8049627:	83 c1 10             	add    $0x10,%ecx
 804962a:	81 fb 80 72 05 08    	cmp    $0x8057280,%ebx
 8049630:	75 c5                	jne    80495f7 <_ada_product+0x17>
with System.IO;

procedure Product is 
 8049632:	dd d8                	fstp   %st(0)
 8049634:	8d 45 40             	lea    0x40(%ebp),%eax
 8049637:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 804963b:	8d 74 24 44          	lea    0x44(%esp),%esi
 804963f:	8d 7c 24 3c          	lea    0x3c(%esp),%edi
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
      end loop;
   end loop;
   for I in 1..4 loop
      for J in 1..4 loop
 8049643:	31 db                	xor    %ebx,%ebx
 8049645:	83 c3 01             	add    $0x1,%ebx
         System.IO.Put (Float'Image (C (I, J)));
 8049648:	d9 44 9d fc          	flds   -0x4(%ebp,%ebx,4)
 804964c:	db 3c 24             	fstpt  (%esp)
 804964f:	c7 44 24 14 06 00 00 	movl   $0x6,0x14(%esp)
 8049656:	00 
 8049657:	89 74 24 0c          	mov    %esi,0xc(%esp)
 804965b:	c7 44 24 10 40 72 05 	movl   $0x8057240,0x10(%esp)
 8049662:	08 
 8049663:	e8 18 1d 00 00       	call   804b380 <system__img_real__image_floating_point>
 8049668:	89 34 24             	mov    %esi,(%esp)
 804966b:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804966f:	c7 44 24 3c 01 00 00 	movl   $0x1,0x3c(%esp)
 8049676:	00 
 8049677:	89 44 24 40          	mov    %eax,0x40(%esp)
 804967b:	e8 00 1f 00 00       	call   804b580 <system__io__put__3>
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
      end loop;
   end loop;
   for I in 1..4 loop
      for J in 1..4 loop
 8049680:	83 fb 04             	cmp    $0x4,%ebx
 8049683:	75 c0                	jne    8049645 <_ada_product+0x65>
         System.IO.Put (Float'Image (C (I, J)));
      end loop;
      System.IO.New_Line;
 8049685:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
         for K in 1..2 loop
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
      end loop;
   end loop;
   for I in 1..4 loop
 804968c:	83 c5 10             	add    $0x10,%ebp
      for J in 1..4 loop
         System.IO.Put (Float'Image (C (I, J)));
      end loop;
      System.IO.New_Line;
 804968f:	e8 bc 1e 00 00       	call   804b550 <system__io__new_line>
         for K in 1..2 loop
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
      end loop;
   end loop;
   for I in 1..4 loop
 8049694:	3b 6c 24 2c          	cmp    0x2c(%esp),%ebp
 8049698:	75 a9                	jne    8049643 <_ada_product+0x63>
      for J in 1..4 loop
         System.IO.Put (Float'Image (C (I, J)));
      end loop;
      System.IO.New_Line;
   end loop;
end Product;
 804969a:	81 c4 9c 00 00 00    	add    $0x9c,%esp
 80496a0:	5b                   	pop    %ebx
 80496a1:	5e                   	pop    %esi
 80496a2:	5f                   	pop    %edi
 80496a3:	5d                   	pop    %ebp
 80496a4:	c3                   	ret    

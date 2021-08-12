
product:     file format elf32-i386


Disassembly of section .text:

080495d0 <_ada_product>:
with System.IO;

procedure Product is 
 80495d0:	55                   	push   %ebp
 80495d1:	89 e5                	mov    %esp,%ebp
 80495d3:	57                   	push   %edi
 80495d4:	56                   	push   %esi
 80495d5:	53                   	push   %ebx
 80495d6:	81 ec ac 00 00 00    	sub    $0xac,%esp
   B : array (1..2, 1..4) of Float := ((1.0, 2.0, 3.0, 4.0),
                                       (4.0, 3.0, 2.0, 1.0));
   C : array (1..4, 1..4) of Float;

begin
   for I in 1..4 loop
 80495dc:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
 80495e3:	83 7d e4 04          	cmpl   $0x4,-0x1c(%ebp)
 80495e7:	0f 8f ad 00 00 00    	jg     804969a <_ada_product+0xca>
      for J in 1..4 loop
 80495ed:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
 80495f4:	83 7d e0 04          	cmpl   $0x4,-0x20(%ebp)
 80495f8:	0f 8f 93 00 00 00    	jg     8049691 <_ada_product+0xc1>
         C (I, J) := 0.0;
 80495fe:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 8049601:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049604:	83 ea 01             	sub    $0x1,%edx
 8049607:	c1 e2 02             	shl    $0x2,%edx
 804960a:	01 d0                	add    %edx,%eax
 804960c:	8d 50 ff             	lea    -0x1(%eax),%edx
 804960f:	a1 40 73 05 08       	mov    0x8057340,%eax
 8049614:	89 44 95 8c          	mov    %eax,-0x74(%ebp,%edx,4)
         for K in 1..2 loop
 8049618:	c7 45 dc 01 00 00 00 	movl   $0x1,-0x24(%ebp)
 804961f:	83 7d dc 02          	cmpl   $0x2,-0x24(%ebp)
 8049623:	7f 63                	jg     8049688 <_ada_product+0xb8>
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
 8049625:	8b 7d e4             	mov    -0x1c(%ebp),%edi
 8049628:	8b 4d e0             	mov    -0x20(%ebp),%ecx
 804962b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804962e:	8b 55 e0             	mov    -0x20(%ebp),%edx
 8049631:	83 e8 01             	sub    $0x1,%eax
 8049634:	c1 e0 02             	shl    $0x2,%eax
 8049637:	01 d0                	add    %edx,%eax
 8049639:	83 e8 01             	sub    $0x1,%eax
 804963c:	d9 44 85 8c          	flds   -0x74(%ebp,%eax,4)
 8049640:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049643:	8b 55 dc             	mov    -0x24(%ebp),%edx
 8049646:	83 e8 01             	sub    $0x1,%eax
 8049649:	01 c0                	add    %eax,%eax
 804964b:	01 d0                	add    %edx,%eax
 804964d:	83 e8 01             	sub    $0x1,%eax
 8049650:	d9 04 85 00 73 05 08 	flds   0x8057300(,%eax,4)
 8049657:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804965a:	8b 55 e0             	mov    -0x20(%ebp),%edx
 804965d:	83 e8 01             	sub    $0x1,%eax
 8049660:	c1 e0 02             	shl    $0x2,%eax
 8049663:	01 d0                	add    %edx,%eax
 8049665:	83 e8 01             	sub    $0x1,%eax
 8049668:	d9 04 85 20 73 05 08 	flds   0x8057320(,%eax,4)
 804966f:	de c9                	fmulp  %st,%st(1)
 8049671:	de c1                	faddp  %st,%st(1)
 8049673:	8d 47 ff             	lea    -0x1(%edi),%eax
 8049676:	c1 e0 02             	shl    $0x2,%eax
 8049679:	01 c8                	add    %ecx,%eax
 804967b:	83 e8 01             	sub    $0x1,%eax
 804967e:	d9 5c 85 8c          	fstps  -0x74(%ebp,%eax,4)

begin
   for I in 1..4 loop
      for J in 1..4 loop
         C (I, J) := 0.0;
         for K in 1..2 loop
 8049682:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
 8049686:	eb 97                	jmp    804961f <_ada_product+0x4f>
                                       (4.0, 3.0, 2.0, 1.0));
   C : array (1..4, 1..4) of Float;

begin
   for I in 1..4 loop
      for J in 1..4 loop
 8049688:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
         C (I, J) := 0.0;
         for K in 1..2 loop
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
      end loop;
 804968c:	e9 63 ff ff ff       	jmp    80495f4 <_ada_product+0x24>
   B : array (1..2, 1..4) of Float := ((1.0, 2.0, 3.0, 4.0),
                                       (4.0, 3.0, 2.0, 1.0));
   C : array (1..4, 1..4) of Float;

begin
   for I in 1..4 loop
 8049691:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
         C (I, J) := 0.0;
         for K in 1..2 loop
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
      end loop;
   end loop;
 8049695:	e9 49 ff ff ff       	jmp    80495e3 <_ada_product+0x13>
   for I in 1..4 loop
 804969a:	c7 45 d8 01 00 00 00 	movl   $0x1,-0x28(%ebp)
 80496a1:	83 7d d8 04          	cmpl   $0x4,-0x28(%ebp)
 80496a5:	0f 8f 9e 00 00 00    	jg     8049749 <_ada_product+0x179>
      for J in 1..4 loop
 80496ab:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%ebp)
 80496b2:	83 7d d4 04          	cmpl   $0x4,-0x2c(%ebp)
 80496b6:	7f 72                	jg     804972a <_ada_product+0x15a>
         System.IO.Put (Float'Image (C (I, J)));
 80496b8:	8d 45 80             	lea    -0x80(%ebp),%eax
 80496bb:	89 85 70 ff ff ff    	mov    %eax,-0x90(%ebp)
 80496c1:	c7 85 74 ff ff ff e0 	movl   $0x80572e0,-0x8c(%ebp)
 80496c8:	72 05 08 
 80496cb:	8b 55 d8             	mov    -0x28(%ebp),%edx
 80496ce:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 80496d1:	83 ea 01             	sub    $0x1,%edx
 80496d4:	c1 e2 02             	shl    $0x2,%edx
 80496d7:	01 d0                	add    %edx,%eax
 80496d9:	83 e8 01             	sub    $0x1,%eax
 80496dc:	d9 44 85 8c          	flds   -0x74(%ebp,%eax,4)
 80496e0:	c7 44 24 14 06 00 00 	movl   $0x6,0x14(%esp)
 80496e7:	00 
 80496e8:	8b 85 70 ff ff ff    	mov    -0x90(%ebp),%eax
 80496ee:	8b 95 74 ff ff ff    	mov    -0x8c(%ebp),%edx
 80496f4:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80496f8:	89 54 24 10          	mov    %edx,0x10(%esp)
 80496fc:	db 3c 24             	fstpt  (%esp)
 80496ff:	e8 2c 1d 00 00       	call   804b430 <system__img_real__image_floating_point>
 8049704:	8d 55 80             	lea    -0x80(%ebp),%edx
 8049707:	89 d3                	mov    %edx,%ebx
 8049709:	c7 45 cc 01 00 00 00 	movl   $0x1,-0x34(%ebp)
 8049710:	89 45 d0             	mov    %eax,-0x30(%ebp)
 8049713:	8d 45 cc             	lea    -0x34(%ebp),%eax
 8049716:	89 c6                	mov    %eax,%esi
 8049718:	89 1c 24             	mov    %ebx,(%esp)
 804971b:	89 74 24 04          	mov    %esi,0x4(%esp)
 804971f:	e8 0c 1f 00 00       	call   804b630 <system__io__put__3>
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
      end loop;
   end loop;
   for I in 1..4 loop
      for J in 1..4 loop
 8049724:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
         System.IO.Put (Float'Image (C (I, J)));
      end loop;
 8049728:	eb 88                	jmp    80496b2 <_ada_product+0xe2>
      System.IO.New_Line;
 804972a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049731:	e8 ca 1e 00 00       	call   804b600 <system__io__new_line>
         for K in 1..2 loop
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
      end loop;
   end loop;
   for I in 1..4 loop
 8049736:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
      for J in 1..4 loop
         System.IO.Put (Float'Image (C (I, J)));
      end loop;
      System.IO.New_Line;
   end loop;
 804973a:	e9 62 ff ff ff       	jmp    80496a1 <_ada_product+0xd1>
 804973f:	eb 00                	jmp    8049741 <_ada_product+0x171>
 8049741:	89 04 24             	mov    %eax,(%esp)
 8049744:	e8 a7 ba 00 00       	call   80551f0 <_Unwind_Resume>
end Product;
 8049749:	81 c4 ac 00 00 00    	add    $0xac,%esp
 804974f:	5b                   	pop    %ebx
 8049750:	5e                   	pop    %esi
 8049751:	5f                   	pop    %edi
 8049752:	5d                   	pop    %ebp
 8049753:	c3                   	ret    

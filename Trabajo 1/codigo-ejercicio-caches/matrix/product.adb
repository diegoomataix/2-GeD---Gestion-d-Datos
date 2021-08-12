with Ada.Real_Time;
use type Ada.Real_Time.Time;
use type Ada.Real_Time.Time_Span;

with System.IO;

procedure Product is 

   -- Caches are 4KB. Therefore addresses with 4K distance are allocated
   -- to the same set.
   -- If Size is equal to 32 then every matrix fit in cache.
   Size : constant := 32;
   type Dimension is range 1..Size;

   A : array (Dimension, Dimension) of Integer;
   pragma Volatile (A);
   B : array (Dimension, Dimension) of Integer;
   pragma Volatile (B);
   C : array (Dimension, Dimension) of Integer;
   pragma Volatile (C);

   -- Addresses for avoiding conflicts
   -- Matrixes are not aligned to cache size
   -- A -> Ram start address + 1 MB
   -- B -> Ram start address + 1 MB + 6 KB
   -- A -> Ram start address + 1 MB + 10 KB
   -- Therefore, same elements correspond the same cache set
   for A'address use System'To_Address (16#40100000#);
   for B'address use System'To_Address (16#40101800#);
   for C'address use System'To_Address (16#40102800#);

   -- Addresses for provoking conflicts
   -- Matrixes are aligned to cache size
   -- A -> Ram start address + 1 MB
   -- B -> Ram start address + 1 MB + 4 KB
   -- A -> Ram start address + 1 MB + 8 KB
   -- Therefore, same elements correspond the same cache set
   -- for A'address use System'To_Address (16#40100000#);
   -- for B'address use System'To_Address (16#40101000#);
   -- for C'address use System'To_Address (16#40102000#);

   Before, After : Ada.Real_Time.Time;
   Elapsed_Time : Ada.Real_Time.Time_Span;
   Microseconds_Per_Iteration : constant := 1_000_000 / Size**3;


begin
   for I in Dimension loop
      for J in Dimension loop
         A (I, J) := Integer(J) + Integer(I);
         B (I, J) := Integer(J) - Integer(I);
         C (I, J) := 0;
      end loop;
   end loop;

   Before := Ada.Real_Time.Clock;
   for I in Dimension loop
      for J in Dimension loop
         for K in Dimension loop
             C (I, J) := C (I, J) + A (I, K)*B(K, J);
         end loop;
         B (I, J) := A (I, J);
         A (I, J) := C (I, J);
      end loop;
   end loop;
   After := Ada.Real_Time.Clock;
   Elapsed_Time := (After - Before);
   System.IO.Put ("Microseconds per Iteration := ");
   System.IO.Put (Duration'Image(Ada.Real_Time.To_Duration
                    (Elapsed_Time*Microseconds_Per_Iteration)));
   System.IO.Put (ASCII.LF & ASCII.CR);

   for I in Dimension loop
      for J in Dimension loop
         System.IO.Put (Integer'Image (C (I, J)));
      end loop;
      System.IO.Put (ASCII.LF & ASCII.CR);
   end loop;
end Product;


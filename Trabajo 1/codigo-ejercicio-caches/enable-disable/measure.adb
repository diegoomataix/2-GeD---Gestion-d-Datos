with Ada.Real_Time;
with Workload;
with Pack_1;
with System.IO;

with System.BB.Cache_Control;
use  System.BB.Cache_Control;

use type Ada.Real_Time.Time;
use type Ada.Real_Time.Time_Span;

procedure Measure is

   Iterations : constant := 1_000;
   Microseconds_Per_Iteration : constant := 1_000_000 / Iterations;

   Before, After : Ada.Real_Time.Time;
   Elapsed_Time : Ada.Real_Time.Time_Span;

   Disable_Cache : Boolean := True;
begin

   loop

      -- Alternate caches enabled and disabled
      if Disable_Cache then
         System.BB.Cache_Control.Cache_Flush (Data);
         System.BB.Cache_Control.Set_Cache_State (Data, Disabled);
         System.BB.Cache_Control.Cache_Flush (Instruction);
         System.BB.Cache_Control.Set_Cache_State (Instruction, Disabled);
         System.IO.Put_Line ("Caches disabled");
         Disable_Cache := False;
      else
         System.BB.Cache_Control.Cache_Flush (Instruction);
         System.BB.Cache_Control.Set_Cache_State (Instruction, Enabled);
         System.BB.Cache_Control.Cache_Flush (Data);
         System.BB.Cache_Control.Set_Cache_State (Data, Enabled);
         System.IO.Put_Line ("Caches enabled");
         Disable_Cache := True;
      end if;

      -- Measure Whetstone benchmark
      Before := Ada.Real_Time.Clock;
      Workload.Small_Whetstone (Iterations);
      After := Ada.Real_Time.Clock;
      Elapsed_Time := (After - Before);
      System.IO.Put ("Microseconds per KiloWhetstone := ");
      System.IO.Put (Duration'Image(Ada.Real_Time.To_Duration
                    (Elapsed_Time*Microseconds_Per_Iteration)));
      System.IO.New_Line;

      -- Measure Drhystone benchmark
      Before := Ada.Real_Time.Clock;
      Pack_1.Proc_0 (Iterations);
      After := Ada.Real_Time.Clock;
      Elapsed_Time := (After - Before);
      System.IO.Put ("Microseconds per KiloDrhystone := ");
      System.IO.Put (Duration'Image((Ada.Real_Time.To_Duration
                    (Elapsed_Time*Microseconds_Per_Iteration))));
      System.IO.New_Line;
   end loop;
end Measure;

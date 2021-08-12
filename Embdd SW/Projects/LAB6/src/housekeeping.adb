------------------------------------------------------------------------------
--                                                                          --
--          Copyright (C) 2018, Universidad Politécnica de Madrid           --
--                                                                          --
-- This is free software;  you can redistribute it  and/or modify it  under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  This software is distributed in the hope  that it will be useful, --
-- but WITHOUT ANY WARRANTY;  without even the implied warranty of MERCHAN- --
-- TABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public --
-- License for  more details.  You should have  received  a copy of the GNU --
-- General  Public  License  distributed  with  this  software;   see  file --
-- COPYING3.  If not, go to http://www.gnu.org/licenses for a complete copy --
-- of the license.
--                                                                          --
------------------------------------------------------------------------------

with Housekeeping_Data;     use Housekeeping_Data;
with Sensor;
with Storage;

with STM32.Board;

package body Housekeeping is

   -- Internal operations

   procedure Get (S : out State);

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize is
   begin
      Sensor.Initialize;
   end Initialize;

   ----------------------------
   -- Housekeeping task body --
   ----------------------------

   task body Housekeeping_Task is
      Data      : State;
      Next_Time : Time := Clock + Start_Delay; -- add initial delay
   begin
      loop
         delay until Next_Time;
         Get(Data);  -- read data
         Storage.Put (Data);  -- stores the data value
         STM32.Board.Blue_LED.Toggle;  -- toggles blue LED
         Next_Time := Next_Time + Period; -- next activation = activation + period
      end loop;
   end Housekeeping_Task;

   ---------
   -- Get --
   ---------

   procedure Get (S : out State) is
      OBC_T : Analog_Data;
      SC    : Seconds_Count;
      TS    : Time_Span;
   begin
      Sensor.Get (OBC_T);    -- cogemos el sensor
      Split (Clock, SC, TS); -- clock es de tipo abstracto, proporciona procedimientos
      -- para sacar N segundos, SC, que es lo que metemos en el registro acompanando el dato
      S.Data := OBC_T;  -- tiene lectura actual +  mission time
      S.Timestamp := Mission_Time (SC); -- add timestamp
   end Get;

end Housekeeping;

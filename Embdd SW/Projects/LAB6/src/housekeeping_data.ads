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

--  Data types for the housekeeping subsystem

with HAL; use HAL;

package Housekeeping_Data is

   type Analog_Data is new UInt16;
   --  Raw ADC reading.
   --  To be converted to engineering units on ground.
   --  Range is 0 .. 4095 (12 bit ADC) for 3 V reference voltage.
   
   type Mission_Time is new Uint64;
   --  Seconds since system startup
   
   type State is
      record
         Data      : Analog_Data;
         Timestamp : Mission_Time;
      end record;
   --  Data are timestamped for transmission to ground
   
end Housekeeping_Data;

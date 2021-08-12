------------------------------------------------------------------------------
--                                                                          --
--          Copyright (C) 2020 Universidad Politécnica de Madrid           --
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

with Ada.Text_IO; use Ada.Text_IO;
with HK_Data; use HK_Data;
with HK_Data.Converter; use HK_Data.Converter;  -- Nos permite usar la funcion temperatura en nuestro c�digo
-- only works when run from the debugger using semihosting
-- with HK_Data.Converter; use Temperature
package body Housekeeping.Display is

   ---------
   -- Put --
   ---------

   procedure Put (T : Analog_Data) is
      T_Aux : constant Temperature_Range := Temperature (Sensor_Reading(T));
   begin
      Put_Line (T_Aux'Img); -- Img es un atributo de imagen
   end Put;

end Housekeeping.Display;

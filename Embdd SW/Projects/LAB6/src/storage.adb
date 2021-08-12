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

package body Storage is


   ------------
   -- Buffer --
   ------------

   protected body Buffer is

      ---------
      -- Put --
      ---------

      procedure Put (Data : State) is
      begin
         Value := Data;
         Fresh := True;
      end Put;

      ---------
      -- Get --
      ---------

      entry Get (Data : out State) when Fresh is -- espera hasta que haya un nuevo dato
         -- esta tarea no tiene porque mantener periocidad
      begin
         Data := Value;
         Fresh := False;
      end Get;

      -------------------
      -- Get_Immediate --
      -------------------

      entry Get_Immediate (Data : out State) when True is
      begin
         Data := Value;
         Fresh := False;
      end Get_Immediate;

   end Buffer;

end Storage;

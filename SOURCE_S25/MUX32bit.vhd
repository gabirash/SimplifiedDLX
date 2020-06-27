--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : 
--  /   /         Filename : xil_17744_30
-- /___/   /\     Timestamp : 06/14/2020 17:26:05
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity MUX32bit is
   port ( A   : in    std_logic_vector (31 downto 0); 
          B   : in    std_logic_vector (31 downto 0); 
          sel : in    std_logic; 
          O   : out   std_logic_vector (31 downto 0));
end MUX32bit;

architecture BEHAVIORAL of MUX32bit is
begin

O <= A when (sel = '0') else B;

end BEHAVIORAL;

---- synopsys translate_off
--configuration CFG_MUX32bit of  MUX32bit is
--   for BEHAVIORAL
--   end for;
--end CFG_MUX32bit;
---- synopsys translate_on


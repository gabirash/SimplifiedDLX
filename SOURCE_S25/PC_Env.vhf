--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : PC_Env.vhf
-- /___/   /\     Timestamp : 06/08/2020 13:41:37
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/C2/SOURCE_S25/PC_Env.vhf -w E:/adlx/C2/SOURCE_S25/PC_Env.sch
--Design Name: PC_Env
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity PC_Env is
   port ( clk       : in    std_logic; 
          PC_enable : in    std_logic; 
          reset     : in    std_logic; 
          PC_reg    : out   std_logic_vector (15 downto 0));
end PC_Env;

architecture BEHAVIORAL of PC_Env is
   component CNT16
      port ( clk   : in    std_logic; 
             ce    : in    std_logic; 
             reset : in    std_logic; 
             cnt_o : out   std_logic_vector (15 downto 0));
   end component;
   
begin
   XLXI_1 : CNT16
      port map (ce=>PC_enable,
                clk=>clk,
                reset=>reset,
                cnt_o(15 downto 0)=>PC_reg(15 downto 0));
   
end BEHAVIORAL;



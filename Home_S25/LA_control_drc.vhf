--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : LA_control_drc.vhf
-- /___/   /\     Timestamp : 05/08/2020 16:58:43
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan6 -flat -suppress -vhdl LA_control_drc.vhf -w E:/adlx/C2/Home_S25/LA_control.sch
--Design Name: LA_control
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

entity LA_control is
   port ( clk     : in    std_logic; 
          in_init : in    std_logic; 
          step_en : in    std_logic; 
          stop_n  : in    std_logic; 
          LA_WE   : out   std_logic; 
          STS_CE  : out   std_logic);
end LA_control;

architecture BEHAVIORAL of LA_control is
   attribute BOX_TYPE   : string ;
   signal IN_INIT_pre_not : std_logic;
   signal LA_run          : std_logic;
   signal XLXN_3          : std_logic;
   signal XLXN_4          : std_logic;
   signal XLXN_19         : std_logic;
   signal XLXN_20         : std_logic;
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : FD
      port map (C=>clk,
                D=>in_init,
                Q=>XLXN_3);
   
   XLXI_2 : FD
      port map (C=>clk,
                D=>LA_run,
                Q=>XLXN_4);
   
   XLXI_3 : OR3
      port map (I0=>step_en,
                I1=>XLXN_20,
                I2=>XLXN_19,
                O=>LA_run);
   
   XLXI_4 : INV
      port map (I=>XLXN_3,
                O=>IN_INIT_pre_not);
   
   XLXI_5 : AND2
      port map (I0=>in_init,
                I1=>IN_INIT_pre_not,
                O=>XLXN_19);
   
   XLXI_7 : INV
      port map (I=>in_init,
                O=>XLXN_20);
   
   XLXI_8 : AND2
      port map (I0=>stop_n,
                I1=>LA_run,
                O=>LA_WE);
   
   XLXI_9 : AND2
      port map (I0=>in_init,
                I1=>XLXN_4,
                O=>STS_CE);
   
end BEHAVIORAL;



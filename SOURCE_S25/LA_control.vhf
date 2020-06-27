--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : LA_control.vhf
-- /___/   /\     Timestamp : 05/26/2020 11:29:45
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/C2/SOURCE_S25/LA_control.vhf -w E:/adlx/C2/SOURCE_S25/LA_control.sch
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
          sts_ce  : out   std_logic);
end LA_control;

architecture BEHAVIORAL of LA_control is
   attribute BOX_TYPE   : string ;
   signal LA_run     : std_logic;
   signal pre_LA_run : std_logic;
   signal pre_sts_ce : std_logic;
   signal XLXN_4     : std_logic;
   signal XLXN_20    : std_logic;
   signal XLXN_22    : std_logic;
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
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
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : FD
      port map (C=>clk,
                D=>pre_sts_ce,
                Q=>sts_ce);
   
   XLXI_2 : FD
      port map (C=>clk,
                D=>pre_LA_run,
                Q=>XLXN_4);
   
   XLXI_7 : INV
      port map (I=>in_init,
                O=>XLXN_20);
   
   XLXI_8 : AND2
      port map (I0=>stop_n,
                I1=>LA_run,
                O=>LA_WE);
   
   XLXI_10 : OR2
      port map (I0=>step_en,
                I1=>XLXN_20,
                O=>pre_LA_run);
   
   XLXI_11 : OR2
      port map (I0=>pre_LA_run,
                I1=>XLXN_4,
                O=>LA_run);
   
   XLXI_13 : AND2
      port map (I0=>in_init,
                I1=>LA_run,
                O=>XLXN_22);
   
   XLXI_14 : XOR2
      port map (I0=>step_en,
                I1=>XLXN_22,
                O=>pre_sts_ce);
   
end BEHAVIORAL;



--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Comparator32_drc.vhf
-- /___/   /\     Timestamp : 06/14/2020 17:13:44
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan6 -flat -suppress -vhdl Comparator32_drc.vhf -w C:/Users/gabon/Desktop/Home_S25/Comparator32.sch
--Design Name: Comparator32
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

entity Comparator32 is
   port ( F        : in    std_logic_vector (2 downto 0); 
          neg      : in    std_logic; 
          S        : in    std_logic_vector (31 downto 0); 
          COMP_OUT : out   std_logic);
end Comparator32;

architecture BEHAVIORAL of Comparator32 is
   attribute BOX_TYPE   : string ;
   signal XLXN_12  : std_logic;
   signal XLXN_15  : std_logic;
   signal XLXN_23  : std_logic;
   signal XLXN_24  : std_logic;
   signal XLXN_44  : std_logic;
   signal XLXN_45  : std_logic;
   signal XLXN_48  : std_logic;
   signal XLXN_49  : std_logic;
   component AEQZ
      port ( Din   : in    std_logic_vector (31 downto 0); 
             A_eqz : out   std_logic);
   end component;
   
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
   
begin
   XLXI_1 : AEQZ
      port map (Din(31 downto 0)=>S(31 downto 0),
                A_eqz=>XLXN_12);
   
   XLXI_3 : INV
      port map (I=>neg,
                O=>XLXN_23);
   
   XLXI_4 : AND2
      port map (I0=>XLXN_12,
                I1=>F(1),
                O=>XLXN_15);
   
   XLXI_5 : AND2
      port map (I0=>neg,
                I1=>F(2),
                O=>XLXN_45);
   
   XLXI_6 : AND2
      port map (I0=>XLXN_23,
                I1=>F(0),
                O=>XLXN_24);
   
   XLXI_7 : AND2
      port map (I0=>XLXN_44,
                I1=>XLXN_24,
                O=>XLXN_49);
   
   XLXI_8 : OR2
      port map (I0=>XLXN_45,
                I1=>XLXN_15,
                O=>XLXN_48);
   
   XLXI_9 : OR2
      port map (I0=>XLXN_49,
                I1=>XLXN_48,
                O=>COMP_OUT);
   
   XLXI_14 : INV
      port map (I=>XLXN_12,
                O=>XLXN_44);
   
end BEHAVIORAL;



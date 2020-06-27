--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Logic_anaylzer.vhf
-- /___/   /\     Timestamp : 05/11/2020 12:44:07
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/ACSL_projects/Home_S25/Logic_anaylzer.vhf -w C:/ACSL_projects/Home_S25/Logic_anaylzer.sch
--Design Name: Logic_anaylzer
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

entity LA_control_MUSER_Logic_anaylzer is
   port ( clk     : in    std_logic; 
          in_init : in    std_logic; 
          step_en : in    std_logic; 
          stop_n  : in    std_logic; 
          LA_WE   : out   std_logic; 
          sts_ce  : out   std_logic);
end LA_control_MUSER_Logic_anaylzer;

architecture BEHAVIORAL of LA_control_MUSER_Logic_anaylzer is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Logic_anaylzer is
   port ( AI             : in    std_logic_vector (4 downto 0); 
          clk            : in    std_logic; 
          in_init        : in    std_logic; 
          Monitored_DATA : in    std_logic_vector (31 downto 0); 
          step_en        : in    std_logic; 
          stop_n         : in    std_logic; 
          DOUT           : out   std_logic_vector (31 downto 0); 
          STATUS         : out   std_logic_vector (4 downto 0));
end Logic_anaylzer;

architecture BEHAVIORAL of Logic_anaylzer is
   signal LA_WE          : std_logic;
   signal STS_CE         : std_logic;
   signal XLXN_5         : std_logic_vector (4 downto 0);
   signal XLXN_8         : std_logic_vector (4 downto 0);
   component MUX5BIT
      port ( sel : in    std_logic; 
             A0  : in    std_logic_vector (4 downto 0); 
             A1  : in    std_logic_vector (4 downto 0); 
             O   : out   std_logic_vector (4 downto 0));
   end component;
   
   component RAM32X32S
      port ( CLK : in    std_logic; 
             WE  : in    std_logic; 
             D   : in    std_logic_vector (31 downto 0); 
             ADD : in    std_logic_vector (4 downto 0); 
             DO  : out   std_logic_vector (31 downto 0));
   end component;
   
   component CNT5
      port ( clk   : in    std_logic; 
             ce    : in    std_logic; 
             reset : in    std_logic; 
             cnt_o : out   std_logic_vector (4 downto 0));
   end component;
   
   component REG5CE
      port ( clk  : in    std_logic; 
             CE   : in    std_logic; 
             DIN  : in    std_logic_vector (4 downto 0); 
             DOUT : out   std_logic_vector (4 downto 0));
   end component;
   
   component LA_control_MUSER_Logic_anaylzer
      port ( clk     : in    std_logic; 
             stop_n  : in    std_logic; 
             step_en : in    std_logic; 
             in_init : in    std_logic; 
             LA_WE   : out   std_logic; 
             STS_CE  : out   std_logic);
   end component;
   
begin
   XLXI_1 : MUX5BIT
      port map (A0(4 downto 0)=>AI(4 downto 0),
                A1(4 downto 0)=>XLXN_8(4 downto 0),
                sel=>LA_WE,
                O(4 downto 0)=>XLXN_5(4 downto 0));
   
   XLXI_2 : RAM32X32S
      port map (ADD(4 downto 0)=>XLXN_5(4 downto 0),
                CLK=>clk,
                D(31 downto 0)=>Monitored_DATA(31 downto 0),
                WE=>LA_WE,
                DO(31 downto 0)=>DOUT(31 downto 0));
   
   XLXI_3 : CNT5
      port map (ce=>LA_WE,
                clk=>clk,
                reset=>STS_CE,
                cnt_o(4 downto 0)=>XLXN_8(4 downto 0));
   
   XLXI_4 : REG5CE
      port map (CE=>STS_CE,
                clk=>clk,
                DIN(4 downto 0)=>XLXN_8(4 downto 0),
                DOUT(4 downto 0)=>STATUS(4 downto 0));
   
   XLXI_5 : LA_control_MUSER_Logic_anaylzer
      port map (clk=>clk,
                in_init=>in_init,
                step_en=>step_en,
                stop_n=>stop_n,
                LA_WE=>LA_WE,
                STS_CE=>STS_CE);
   
end BEHAVIORAL;



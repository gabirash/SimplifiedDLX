--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Monitor_slave.vhf
-- /___/   /\     Timestamp : 05/11/2020 11:52:18
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/ACSL_projects/Home_S25/Monitor_slave.vhf -w C:/ACSL_projects/Home_S25/Monitor_slave.sch
--Design Name: Monitor_slave
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

entity Slave_control_MUSER_Monitor_slave is
   port ( AI       : in    std_logic_vector (9 downto 0); 
          CARDSEL  : in    std_logic; 
          clk      : in    std_logic; 
          WR_N     : in    std_logic; 
          req_addr : out   std_logic_vector (4 downto 0); 
          SACK_N   : out   std_logic);
end Slave_control_MUSER_Monitor_slave;

architecture BEHAVIORAL of Slave_control_MUSER_Monitor_slave is
   attribute BOX_TYPE   : string ;
   signal XLXN_32  : std_logic;
   signal XLXN_66  : std_logic;
   signal XLXN_72  : std_logic;
   signal XLXN_73  : std_logic;
   signal XLXN_76  : std_logic;
   signal x1       : std_logic;
   signal x2       : std_logic;
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component NAND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NAND2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component BUF5
      port ( Din  : in    std_logic_vector (4 downto 0); 
             Dout : out   std_logic_vector (4 downto 0));
   end component;
   
begin
   XLXI_1 : AND3
      port map (I0=>WR_N,
                I1=>CARDSEL,
                I2=>XLXN_32,
                O=>XLXN_66);
   
   XLXI_2 : AND3
      port map (I0=>AI(7),
                I1=>AI(8),
                I2=>XLXN_76,
                O=>XLXN_32);
   
   XLXI_9 : FD
      port map (C=>clk,
                D=>XLXN_66,
                Q=>x1);
   
   XLXI_10 : FD
      port map (C=>clk,
                D=>x1,
                Q=>x2);
   
   XLXI_11 : FD
      port map (C=>clk,
                D=>x2,
                Q=>XLXN_72);
   
   XLXI_15 : NAND2
      port map (I0=>XLXN_73,
                I1=>x2,
                O=>SACK_N);
   
   XLXI_16 : INV
      port map (I=>XLXN_72,
                O=>XLXN_73);
   
   XLXI_17 : BUF5
      port map (Din(4 downto 0)=>AI(4 downto 0),
                Dout(4 downto 0)=>req_addr(4 downto 0));
   
   XLXI_18 : INV
      port map (I=>AI(9),
                O=>XLXN_76);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Monitor_slave is
   port ( A        : in    std_logic_vector (31 downto 0); 
          AI       : in    std_logic_vector (9 downto 0); 
          B        : in    std_logic_vector (31 downto 0); 
          C        : in    std_logic_vector (31 downto 0); 
          CARDSEL  : in    std_logic; 
          clk      : in    std_logic; 
          D        : in    std_logic_vector (31 downto 0); 
          WR_N     : in    std_logic; 
          reg_addr : out   std_logic_vector (4 downto 0); 
          SACK_N   : out   std_logic; 
          SDO      : out   std_logic_vector (31 downto 0));
end Monitor_slave;

architecture BEHAVIORAL of Monitor_slave is
   component MUX4_32bit
      port ( A0  : in    std_logic_vector (31 downto 0); 
             A1  : in    std_logic_vector (31 downto 0); 
             A2  : in    std_logic_vector (31 downto 0); 
             A3  : in    std_logic_vector (31 downto 0); 
             sel : in    std_logic_vector (1 downto 0); 
             O   : out   std_logic_vector (31 downto 0));
   end component;
   
   component Slave_control_MUSER_Monitor_slave
      port ( CARDSEL  : in    std_logic; 
             WR_N     : in    std_logic; 
             AI       : in    std_logic_vector (9 downto 0); 
             clk      : in    std_logic; 
             SACK_N   : out   std_logic; 
             req_addr : out   std_logic_vector (4 downto 0));
   end component;
   
begin
   XLXI_1 : MUX4_32bit
      port map (A0(31 downto 0)=>A(31 downto 0),
                A1(31 downto 0)=>B(31 downto 0),
                A2(31 downto 0)=>C(31 downto 0),
                A3(31 downto 0)=>D(31 downto 0),
                sel(1 downto 0)=>AI(6 downto 5),
                O(31 downto 0)=>SDO(31 downto 0));
   
   XLXI_2 : Slave_control_MUSER_Monitor_slave
      port map (AI(9 downto 0)=>AI(9 downto 0),
                CARDSEL=>CARDSEL,
                clk=>clk,
                WR_N=>WR_N,
                req_addr(4 downto 0)=>reg_addr(4 downto 0),
                SACK_N=>SACK_N);
   
end BEHAVIORAL;



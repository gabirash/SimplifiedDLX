--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Monitor.vhf
-- /___/   /\     Timestamp : 05/26/2020 11:29:45
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/C2/SOURCE_S25/Monitor.vhf -w E:/adlx/C2/SOURCE_S25/Monitor.sch
--Design Name: Monitor
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

entity BUF5_MUSER_Monitor is
   port ( Din  : in    std_logic_vector (4 downto 0); 
          Dout : out   std_logic_vector (4 downto 0));
end BUF5_MUSER_Monitor;

architecture BEHAVIORAL of BUF5_MUSER_Monitor is
   attribute BOX_TYPE   : string ;
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
begin
   XLXI_1 : BUF
      port map (I=>Din(0),
                O=>Dout(0));
   
   XLXI_2 : BUF
      port map (I=>Din(1),
                O=>Dout(1));
   
   XLXI_3 : BUF
      port map (I=>Din(2),
                O=>Dout(2));
   
   XLXI_4 : BUF
      port map (I=>Din(3),
                O=>Dout(3));
   
   XLXI_5 : BUF
      port map (I=>Din(4),
                O=>Dout(4));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Slave_control_MUSER_Monitor is
   port ( AI       : in    std_logic_vector (9 downto 0); 
          CARDSEL  : in    std_logic; 
          clk      : in    std_logic; 
          WR_N     : in    std_logic; 
          req_addr : out   std_logic_vector (4 downto 0); 
          SACK_N   : out   std_logic);
end Slave_control_MUSER_Monitor;

architecture BEHAVIORAL of Slave_control_MUSER_Monitor is
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
   
   component BUF5_MUSER_Monitor
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
   
   XLXI_17 : BUF5_MUSER_Monitor
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

entity Monitor_slave_MUSER_Monitor is
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
end Monitor_slave_MUSER_Monitor;

architecture BEHAVIORAL of Monitor_slave_MUSER_Monitor is
   component MUX4_32bit
      port ( A0  : in    std_logic_vector (31 downto 0); 
             A1  : in    std_logic_vector (31 downto 0); 
             A2  : in    std_logic_vector (31 downto 0); 
             A3  : in    std_logic_vector (31 downto 0); 
             sel : in    std_logic_vector (1 downto 0); 
             O   : out   std_logic_vector (31 downto 0));
   end component;
   
   component Slave_control_MUSER_Monitor
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
   
   XLXI_2 : Slave_control_MUSER_Monitor
      port map (AI(9 downto 0)=>AI(9 downto 0),
                CARDSEL=>CARDSEL,
                clk=>clk,
                WR_N=>WR_N,
                req_addr(4 downto 0)=>reg_addr(4 downto 0),
                SACK_N=>SACK_N);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity LA_control_MUSER_Monitor is
   port ( clk     : in    std_logic; 
          in_init : in    std_logic; 
          step_en : in    std_logic; 
          stop_n  : in    std_logic; 
          LA_WE   : out   std_logic; 
          sts_ce  : out   std_logic);
end LA_control_MUSER_Monitor;

architecture BEHAVIORAL of LA_control_MUSER_Monitor is
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

entity Logic_anaylzer_MUSER_Monitor is
   port ( AI             : in    std_logic_vector (4 downto 0); 
          clk            : in    std_logic; 
          in_init        : in    std_logic; 
          Monitored_DATA : in    std_logic_vector (31 downto 0); 
          step_en        : in    std_logic; 
          stop_n         : in    std_logic; 
          DOUT           : out   std_logic_vector (31 downto 0); 
          STATUS         : out   std_logic_vector (4 downto 0));
end Logic_anaylzer_MUSER_Monitor;

architecture BEHAVIORAL of Logic_anaylzer_MUSER_Monitor is
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
   
   component LA_control_MUSER_Monitor
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
   
   XLXI_5 : LA_control_MUSER_Monitor
      port map (clk=>clk,
                in_init=>in_init,
                step_en=>step_en,
                stop_n=>stop_n,
                LA_WE=>LA_WE,
                STS_CE=>STS_CE);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Monitor is
   port ( AI        : in    std_logic_vector (9 downto 0); 
          C         : in    std_logic_vector (31 downto 0); 
          CARDSEL   : in    std_logic; 
          clk       : in    std_logic; 
          D         : in    std_logic_vector (31 downto 0); 
          in_init   : in    std_logic; 
          Monitored : in    std_logic_vector (31 downto 0); 
          step_en   : in    std_logic; 
          stop_n    : in    std_logic; 
          WR_N      : in    std_logic; 
          reg_addr  : out   std_logic_vector (4 downto 0); 
          SACK_N    : out   std_logic; 
          SDO       : out   std_logic_vector (31 downto 0));
end Monitor;

architecture BEHAVIORAL of Monitor is
   signal XLXN_13   : std_logic_vector (31 downto 0);
   signal Y         : std_logic_vector (31 downto 0);
   component Logic_anaylzer_MUSER_Monitor
      port ( clk            : in    std_logic; 
             AI             : in    std_logic_vector (4 downto 0); 
             step_en        : in    std_logic; 
             stop_n         : in    std_logic; 
             in_init        : in    std_logic; 
             Monitored_DATA : in    std_logic_vector (31 downto 0); 
             STATUS         : out   std_logic_vector (4 downto 0); 
             DOUT           : out   std_logic_vector (31 downto 0));
   end component;
   
   component Monitor_slave_MUSER_Monitor
      port ( clk      : in    std_logic; 
             AI       : in    std_logic_vector (9 downto 0); 
             CARDSEL  : in    std_logic; 
             WR_N     : in    std_logic; 
             A        : in    std_logic_vector (31 downto 0); 
             B        : in    std_logic_vector (31 downto 0); 
             C        : in    std_logic_vector (31 downto 0); 
             D        : in    std_logic_vector (31 downto 0); 
             SDO      : out   std_logic_vector (31 downto 0); 
             SACK_N   : out   std_logic; 
             reg_addr : out   std_logic_vector (4 downto 0));
   end component;
   
   component ID_NUM
      port ( ID : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXI_1 : Logic_anaylzer_MUSER_Monitor
      port map (AI(4 downto 0)=>AI(4 downto 0),
                clk=>clk,
                in_init=>in_init,
                Monitored_DATA(31 downto 0)=>Monitored(31 downto 0),
                step_en=>step_en,
                stop_n=>stop_n,
                DOUT(31 downto 0)=>XLXN_13(31 downto 0),
                STATUS(4 downto 0)=>Y(4 downto 0));
   
   XLXI_2 : Monitor_slave_MUSER_Monitor
      port map (A(31 downto 0)=>XLXN_13(31 downto 0),
                AI(9 downto 0)=>AI(9 downto 0),
                B(31 downto 0)=>Y(31 downto 0),
                C(31 downto 0)=>C(31 downto 0),
                CARDSEL=>CARDSEL,
                clk=>clk,
                D(31 downto 0)=>D(31 downto 0),
                WR_N=>WR_N,
                reg_addr(4 downto 0)=>reg_addr(4 downto 0),
                SACK_N=>SACK_N,
                SDO(31 downto 0)=>SDO(31 downto 0));
   
   XLXI_3 : ID_NUM
      port map (ID(7 downto 0)=>Y(15 downto 8));
   
end BEHAVIORAL;



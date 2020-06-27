--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Load_Store_Machine.vhf
-- /___/   /\     Timestamp : 06/02/2020 11:21:54
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/C2/Home_S25/Load_Store_Machine.vhf -w E:/adlx/C2/Home_S25/Load_Store_Machine.sch
--Design Name: Load_Store_Machine
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

entity PC_Env_MUSER_Load_Store_Machine is
   port ( clk       : in    std_logic; 
          PC_enable : in    std_logic; 
          reset     : in    std_logic; 
          PC_reg    : out   std_logic_vector (15 downto 0));
end PC_Env_MUSER_Load_Store_Machine;

architecture BEHAVIORAL of PC_Env_MUSER_Load_Store_Machine is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity GPR_Env_MUSER_Load_Store_Machine is
   port ( Aadr     : in    std_logic_vector (4 downto 0); 
          Badr     : in    std_logic_vector (4 downto 0); 
          C        : in    std_logic_vector (31 downto 0); 
          Cadr     : in    std_logic_vector (4 downto 0); 
          clk      : in    std_logic; 
          Dadr     : in    std_logic_vector (4 downto 0); 
          GPR_WE   : in    std_logic; 
          A        : out   std_logic_vector (31 downto 0); 
          AEQZ_out : out   std_logic; 
          B        : out   std_logic_vector (31 downto 0); 
          D        : out   std_logic_vector (31 downto 0));
end GPR_Env_MUSER_Load_Store_Machine;

architecture BEHAVIORAL of GPR_Env_MUSER_Load_Store_Machine is
   attribute BOX_TYPE   : string ;
   signal AramAdr    : std_logic_vector (4 downto 0);
   signal BramAdr    : std_logic_vector (4 downto 0);
   signal DramAdr    : std_logic_vector (4 downto 0);
   signal GPR_WE_dis : std_logic;
   signal XLXN_16    : std_logic;
   signal A_DUMMY    : std_logic_vector (31 downto 0);
   component RAM32X32S
      port ( CLK : in    std_logic; 
             WE  : in    std_logic; 
             D   : in    std_logic_vector (31 downto 0); 
             ADD : in    std_logic_vector (4 downto 0); 
             DO  : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX5BIT
      port ( sel : in    std_logic; 
             A0  : in    std_logic_vector (4 downto 0); 
             A1  : in    std_logic_vector (4 downto 0); 
             O   : out   std_logic_vector (4 downto 0));
   end component;
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AEQZ
      port ( Din   : in    std_logic_vector (31 downto 0); 
             A_eqz : out   std_logic);
   end component;
   
begin
   A(31 downto 0) <= A_DUMMY(31 downto 0);
   XLXI_1 : RAM32X32S
      port map (ADD(4 downto 0)=>AramAdr(4 downto 0),
                CLK=>clk,
                D(31 downto 0)=>C(31 downto 0),
                WE=>GPR_WE_dis,
                DO(31 downto 0)=>A_DUMMY(31 downto 0));
   
   XLXI_2 : RAM32X32S
      port map (ADD(4 downto 0)=>BramAdr(4 downto 0),
                CLK=>clk,
                D(31 downto 0)=>C(31 downto 0),
                WE=>GPR_WE_dis,
                DO(31 downto 0)=>B(31 downto 0));
   
   XLXI_3 : RAM32X32S
      port map (ADD(4 downto 0)=>DramAdr(4 downto 0),
                CLK=>clk,
                D(31 downto 0)=>C(31 downto 0),
                WE=>GPR_WE_dis,
                DO(31 downto 0)=>D(31 downto 0));
   
   XLXI_4 : MUX5BIT
      port map (A0(4 downto 0)=>Aadr(4 downto 0),
                A1(4 downto 0)=>Cadr(4 downto 0),
                sel=>GPR_WE,
                O(4 downto 0)=>AramAdr(4 downto 0));
   
   XLXI_7 : OR5
      port map (I0=>Cadr(4),
                I1=>Cadr(3),
                I2=>Cadr(2),
                I3=>Cadr(1),
                I4=>Cadr(0),
                O=>XLXN_16);
   
   XLXI_8 : AND2
      port map (I0=>XLXN_16,
                I1=>GPR_WE,
                O=>GPR_WE_dis);
   
   XLXI_9 : MUX5BIT
      port map (A0(4 downto 0)=>Badr(4 downto 0),
                A1(4 downto 0)=>Cadr(4 downto 0),
                sel=>GPR_WE,
                O(4 downto 0)=>BramAdr(4 downto 0));
   
   XLXI_10 : MUX5BIT
      port map (A0(4 downto 0)=>Dadr(4 downto 0),
                A1(4 downto 0)=>Cadr(4 downto 0),
                sel=>GPR_WE,
                O(4 downto 0)=>DramAdr(4 downto 0));
   
   XLXI_13 : AEQZ
      port map (Din(31 downto 0)=>A_DUMMY(31 downto 0),
                A_eqz=>AEQZ_out);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Load_Store_Machine is
   port ( ADMSe  : in    std_logic; 
          Bce    : in    std_logic; 
          Cce    : in    std_logic; 
          clk    : in    std_logic; 
          Dadr   : in    std_logic_vector (4 downto 0); 
          DI     : in    std_logic_vector (31 downto 0); 
          GPR_WE : in    std_logic; 
          IRce   : in    std_logic; 
          PCce   : in    std_logic; 
          reset  : in    std_logic; 
          D      : out   std_logic_vector (31 downto 0); 
          D_OUT  : out   std_logic_vector (31 downto 0); 
          MAO    : out   std_logic_vector (31 downto 0); 
          opcode : out   std_logic_vector (5 downto 0));
end Load_Store_Machine;

architecture BEHAVIORAL of Load_Store_Machine is
   signal B       : std_logic_vector (31 downto 0);
   signal Badr    : std_logic_vector (4 downto 0);
   signal c       : std_logic_vector (31 downto 0);
   signal Cadr    : std_logic_vector (4 downto 0);
   signal imm     : std_logic_vector (15 downto 0);
   signal MUX_O   : std_logic_vector (15 downto 0);
   signal PC_reg  : std_logic_vector (15 downto 0);
   signal XLXN_17 : std_logic_vector (4 downto 0);
   signal XLXN_23 : std_logic;
   signal XLXN_24 : std_logic_vector (31 downto 0);
   component GPR_Env_MUSER_Load_Store_Machine
      port ( clk      : in    std_logic; 
             Aadr     : in    std_logic_vector (4 downto 0); 
             Badr     : in    std_logic_vector (4 downto 0); 
             Cadr     : in    std_logic_vector (4 downto 0); 
             Dadr     : in    std_logic_vector (4 downto 0); 
             C        : in    std_logic_vector (31 downto 0); 
             GPR_WE   : in    std_logic; 
             AEQZ_out : out   std_logic; 
             A        : out   std_logic_vector (31 downto 0); 
             B        : out   std_logic_vector (31 downto 0); 
             D        : out   std_logic_vector (31 downto 0));
   end component;
   
   component PC_Env_MUSER_Load_Store_Machine
      port ( clk       : in    std_logic; 
             reset     : in    std_logic; 
             PC_enable : in    std_logic; 
             PC_reg    : out   std_logic_vector (15 downto 0));
   end component;
   
   component IR_Envi
      port ( clk    : in    std_logic; 
             IRce   : in    std_logic; 
             D_in   : in    std_logic_vector (31 downto 0); 
             opcode : out   std_logic_vector (5 downto 0); 
             Badr   : out   std_logic_vector (4 downto 0); 
             Cadr   : out   std_logic_vector (4 downto 0); 
             imm    : out   std_logic_vector (15 downto 0));
   end component;
   
   component MUX16bit
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (15 downto 0); 
             B   : in    std_logic_vector (15 downto 0); 
             O   : out   std_logic_vector (15 downto 0));
   end component;
   
   component MMU
      port ( AO  : in    std_logic_vector (15 downto 0); 
             MAO : out   std_logic_vector (31 downto 0));
   end component;
   
   component REG32CE
      port ( CLK  : in    std_logic; 
             CE   : in    std_logic; 
             DIN  : in    std_logic_vector (31 downto 0); 
             DOUT : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   XLXI_1 : GPR_Env_MUSER_Load_Store_Machine
      port map (Aadr(4 downto 0)=>XLXN_17(4 downto 0),
                Badr(4 downto 0)=>Badr(4 downto 0),
                C(31 downto 0)=>c(31 downto 0),
                Cadr(4 downto 0)=>Cadr(4 downto 0),
                clk=>clk,
                Dadr(4 downto 0)=>Dadr(4 downto 0),
                GPR_WE=>GPR_WE,
                A(31 downto 0)=>XLXN_24(31 downto 0),
                AEQZ_out=>XLXN_23,
                B(31 downto 0)=>B(31 downto 0),
                D(31 downto 0)=>D(31 downto 0));
   
   XLXI_2 : PC_Env_MUSER_Load_Store_Machine
      port map (clk=>clk,
                PC_enable=>PCce,
                reset=>reset,
                PC_reg(15 downto 0)=>PC_reg(15 downto 0));
   
   XLXI_3 : IR_Envi
      port map (clk=>clk,
                D_in(31 downto 0)=>DI(31 downto 0),
                IRce=>IRce,
                Badr(4 downto 0)=>Badr(4 downto 0),
                Cadr(4 downto 0)=>Cadr(4 downto 0),
                imm(15 downto 0)=>imm(15 downto 0),
                opcode(5 downto 0)=>opcode(5 downto 0));
   
   XLXI_4 : MUX16bit
      port map (A(15 downto 0)=>PC_reg(15 downto 0),
                B(15 downto 0)=>imm(15 downto 0),
                sel=>ADMSe,
                O(15 downto 0)=>MUX_O(15 downto 0));
   
   XLXI_5 : MMU
      port map (AO(15 downto 0)=>MUX_O(15 downto 0),
                MAO(31 downto 0)=>MAO(31 downto 0));
   
   XLXI_6 : REG32CE
      port map (CE=>Bce,
                CLK=>clk,
                DIN(31 downto 0)=>B(31 downto 0),
                DOUT(31 downto 0)=>D_OUT(31 downto 0));
   
   XLXI_7 : REG32CE
      port map (CE=>Cce,
                CLK=>clk,
                DIN(31 downto 0)=>DI(31 downto 0),
                DOUT(31 downto 0)=>c(31 downto 0));
   
end BEHAVIORAL;



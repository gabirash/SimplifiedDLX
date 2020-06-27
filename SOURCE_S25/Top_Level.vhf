--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Top_Level.vhf
-- /___/   /\     Timestamp : 06/23/2020 20:13:30
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/C2/SOURCE_S25/Top_Level.vhf -w E:/adlx/C2/SOURCE_S25/Top_Level.sch
--Design Name: Top_Level
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M2_1_HXILINX_Top_Level -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_Top_Level is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_Top_Level;

architecture M2_1_HXILINX_Top_Level_V of M2_1_HXILINX_Top_Level is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_Top_Level_V;
----- CELL ADSU16_HXILINX_Top_Level -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADSU16_HXILINX_Top_Level is
port(
    CO   : out std_logic;
    OFL  : out std_logic;
    S    : out std_logic_vector(15 downto 0);

    A    : in std_logic_vector(15 downto 0);
    ADD  : in std_logic;
    B    : in std_logic_vector(15 downto 0);
    CI   : in std_logic
  );
end ADSU16_HXILINX_Top_Level;

architecture ADSU16_HXILINX_Top_Level_V of ADSU16_HXILINX_Top_Level is

begin
  adsu_p : process (A, ADD, B, CI)
    variable adsu_tmp : std_logic_vector(16 downto 0);
  begin
    if(ADD = '1') then
     adsu_tmp := conv_std_logic_vector((conv_integer(A) + conv_integer(B) + conv_integer(CI)),17);
    else
     adsu_tmp := conv_std_logic_vector((conv_integer(A) - conv_integer(not CI) - conv_integer(B)),17);
  end if;
      
  S   <= adsu_tmp(15 downto 0);
   
  if (ADD='1') then
    CO <= adsu_tmp(16);
    OFL <=  ( A(15) and B(15) and (not adsu_tmp(15)) ) or ( (not A(15)) and (not B(15)) and adsu_tmp(15) );  
  else
    CO <= not adsu_tmp(16);
    OFL <=  ( A(15) and (not B(15)) and (not adsu_tmp(15)) ) or ( (not A(15)) and B(15) and adsu_tmp(15) );  
  end if;
 
  end process;
  
end ADSU16_HXILINX_Top_Level_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CSA32_MUSER_Top_Level is
   port ( A       : in    std_logic_vector (31 downto 0); 
          B       : in    std_logic_vector (31 downto 0); 
          SUB     : in    std_logic; 
          ALU_OUT : out   std_logic_vector (31 downto 0); 
          NEG     : out   std_logic);
end CSA32_MUSER_Top_Level;

architecture BEHAVIORAL of CSA32_MUSER_Top_Level is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal Ck      : std_logic;
   signal Cn      : std_logic;
   signal Cn0     : std_logic;
   signal Cn1     : std_logic;
   signal N_SUB   : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_17 : std_logic;
   signal XLXN_23 : std_logic;
   signal XLXN_24 : std_logic_vector (15 downto 0);
   signal XLXN_26 : std_logic;
   signal XLXN_29 : std_logic;
   signal XLXN_54 : std_logic_vector (15 downto 0);
   component ADSU16_HXILINX_Top_Level
      port ( A   : in    std_logic_vector (15 downto 0); 
             ADD : in    std_logic; 
             B   : in    std_logic_vector (15 downto 0); 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S   : out   std_logic_vector (15 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component MUX16bit
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (15 downto 0); 
             B   : in    std_logic_vector (15 downto 0); 
             O   : out   std_logic_vector (15 downto 0));
   end component;
   
   component XOR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR4 : component is "BLACK_BOX";
   
   component M2_1_HXILINX_Top_Level
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_20";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_21";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_22";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_23";
begin
   XLXI_1 : ADSU16_HXILINX_Top_Level
      port map (A(15 downto 0)=>A(31 downto 16),
                ADD=>N_SUB,
                B(15 downto 0)=>B(31 downto 16),
                CI=>XLXN_13,
                CO=>Cn1,
                OFL=>XLXN_23,
                S(15 downto 0)=>XLXN_24(15 downto 0));
   
   XLXI_2 : ADSU16_HXILINX_Top_Level
      port map (A(15 downto 0)=>A(31 downto 16),
                ADD=>N_SUB,
                B(15 downto 0)=>B(31 downto 16),
                CI=>XLXN_17,
                CO=>Cn0,
                OFL=>XLXN_26,
                S(15 downto 0)=>XLXN_54(15 downto 0));
   
   XLXI_3 : ADSU16_HXILINX_Top_Level
      port map (A(15 downto 0)=>A(15 downto 0),
                ADD=>N_SUB,
                B(15 downto 0)=>B(15 downto 0),
                CI=>SUB,
                CO=>Ck,
                OFL=>XLXN_29,
                S(15 downto 0)=>ALU_OUT(15 downto 0));
   
   XLXI_8 : GND
      port map (G=>XLXN_17);
   
   XLXI_9 : VCC
      port map (P=>XLXN_13);
   
   XLXI_10 : INV
      port map (I=>SUB,
                O=>N_SUB);
   
   XLXI_11 : MUX16bit
      port map (A(15 downto 0)=>XLXN_54(15 downto 0),
                B(15 downto 0)=>XLXN_24(15 downto 0),
                sel=>Ck,
                O(15 downto 0)=>ALU_OUT(31 downto 16));
   
   XLXI_14 : XOR4
      port map (I0=>Cn,
                I1=>SUB,
                I2=>B(31),
                I3=>A(31),
                O=>NEG);
   
   XLXI_15 : M2_1_HXILINX_Top_Level
      port map (D0=>Cn0,
                D1=>Cn1,
                S0=>Ck,
                O=>Cn);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Comparator32_MUSER_Top_Level is
   port ( F        : in    std_logic_vector (2 downto 0); 
          neg      : in    std_logic; 
          S        : in    std_logic_vector (31 downto 0); 
          COMP_OUT : out   std_logic);
end Comparator32_MUSER_Top_Level;

architecture BEHAVIORAL of Comparator32_MUSER_Top_Level is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ALU_Envi_MUSER_Top_Level is
   port ( A      : in    std_logic_vector (31 downto 0); 
          add    : in    std_logic; 
          ALUF   : in    std_logic_vector (2 downto 0); 
          B      : in    std_logic_vector (31 downto 0); 
          test   : in    std_logic; 
          ALUOUT : out   std_logic_vector (31 downto 0));
end ALU_Envi_MUSER_Top_Level;

architecture BEHAVIORAL of ALU_Envi_MUSER_Top_Level is
   attribute BOX_TYPE   : string ;
   signal F       : std_logic_vector (2 downto 0);
   signal neg     : std_logic;
   signal S       : std_logic_vector (31 downto 0);
   signal sub     : std_logic;
   signal XLXN_10 : std_logic_vector (31 downto 0);
   signal XLXN_11 : std_logic_vector (31 downto 0);
   signal XLXN_18 : std_logic_vector (2 downto 0);
   signal XLXN_34 : std_logic_vector (31 downto 0);
   signal XLXN_36 : std_logic_vector (31 downto 0);
   signal XLXN_40 : std_logic_vector (31 downto 0);
   signal XLXN_46 : std_logic;
   signal XLXN_47 : std_logic;
   signal XLXN_69 : std_logic_vector (31 downto 0);
   signal XLXN_70 : std_logic_vector (31 downto 0);
   component OR32
      port ( A : in    std_logic_vector (31 downto 0); 
             B : in    std_logic_vector (31 downto 0); 
             O : out   std_logic_vector (31 downto 0));
   end component;
   
   component XOR32
      port ( A : in    std_logic_vector (31 downto 0); 
             B : in    std_logic_vector (31 downto 0); 
             O : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX32bit
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (31 downto 0); 
             B   : in    std_logic_vector (31 downto 0); 
             O   : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX3BIT
      port ( sel : in    std_logic; 
             A0  : in    std_logic_vector (2 downto 0); 
             A1  : in    std_logic_vector (2 downto 0); 
             O   : out   std_logic_vector (2 downto 0));
   end component;
   
   component Const_011
      port ( constOut : out   std_logic_vector (2 downto 0));
   end component;
   
   component AND32
      port ( A : in    std_logic_vector (31 downto 0); 
             B : in    std_logic_vector (31 downto 0); 
             O : out   std_logic_vector (31 downto 0));
   end component;
   
   component Comparator32_MUSER_Top_Level
      port ( S        : in    std_logic_vector (31 downto 0); 
             F        : in    std_logic_vector (2 downto 0); 
             neg      : in    std_logic; 
             COMP_OUT : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component compout1to32
      port ( compsing  : in    std_logic; 
             compmulti : out   std_logic_vector (31 downto 0));
   end component;
   
   component CSA32_MUSER_Top_Level
      port ( A       : in    std_logic_vector (31 downto 0); 
             SUB     : in    std_logic; 
             B       : in    std_logic_vector (31 downto 0); 
             ALU_OUT : out   std_logic_vector (31 downto 0); 
             NEG     : out   std_logic);
   end component;
   
begin
   XLXI_1 : OR32
      port map (A(31 downto 0)=>A(31 downto 0),
                B(31 downto 0)=>B(31 downto 0),
                O(31 downto 0)=>XLXN_10(31 downto 0));
   
   XLXI_2 : XOR32
      port map (A(31 downto 0)=>A(31 downto 0),
                B(31 downto 0)=>B(31 downto 0),
                O(31 downto 0)=>XLXN_11(31 downto 0));
   
   XLXI_3 : MUX32bit
      port map (A(31 downto 0)=>XLXN_11(31 downto 0),
                B(31 downto 0)=>XLXN_10(31 downto 0),
                sel=>F(0),
                O(31 downto 0)=>XLXN_36(31 downto 0));
   
   XLXI_5 : MUX3BIT
      port map (A0(2 downto 0)=>ALUF(2 downto 0),
                A1(2 downto 0)=>XLXN_18(2 downto 0),
                sel=>add,
                O(2 downto 0)=>F(2 downto 0));
   
   XLXI_7 : Const_011
      port map (constOut(2 downto 0)=>XLXN_18(2 downto 0));
   
   XLXI_13 : AND32
      port map (A(31 downto 0)=>A(31 downto 0),
                B(31 downto 0)=>B(31 downto 0),
                O(31 downto 0)=>XLXN_34(31 downto 0));
   
   XLXI_14 : MUX32bit
      port map (A(31 downto 0)=>XLXN_36(31 downto 0),
                B(31 downto 0)=>XLXN_34(31 downto 0),
                sel=>F(1),
                O(31 downto 0)=>XLXN_40(31 downto 0));
   
   XLXI_15 : MUX32bit
      port map (A(31 downto 0)=>S(31 downto 0),
                B(31 downto 0)=>XLXN_40(31 downto 0),
                sel=>F(2),
                O(31 downto 0)=>XLXN_69(31 downto 0));
   
   XLXI_16 : Comparator32_MUSER_Top_Level
      port map (F(2 downto 0)=>F(2 downto 0),
                neg=>neg,
                S(31 downto 0)=>S(31 downto 0),
                COMP_OUT=>XLXN_46);
   
   XLXI_17 : INV
      port map (I=>F(0),
                O=>XLXN_47);
   
   XLXI_18 : OR2
      port map (I0=>test,
                I1=>XLXN_47,
                O=>sub);
   
   XLXI_22 : compout1to32
      port map (compsing=>XLXN_46,
                compmulti(31 downto 0)=>XLXN_70(31 downto 0));
   
   XLXI_23 : MUX32bit
      port map (A(31 downto 0)=>XLXN_69(31 downto 0),
                B(31 downto 0)=>XLXN_70(31 downto 0),
                sel=>test,
                O(31 downto 0)=>ALUOUT(31 downto 0));
   
   XLXI_24 : CSA32_MUSER_Top_Level
      port map (A(31 downto 0)=>A(31 downto 0),
                B(31 downto 0)=>B(31 downto 0),
                SUB=>sub,
                ALU_OUT(31 downto 0)=>S(31 downto 0),
                NEG=>neg);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity GPR_Env_MUSER_Top_Level is
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
end GPR_Env_MUSER_Top_Level;

architecture BEHAVIORAL of GPR_Env_MUSER_Top_Level is
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

entity DLXDataPath_MUSER_Top_Level is
   port ( Ace     : in    std_logic; 
          add     : in    std_logic; 
          Asel    : in    std_logic; 
          Bce     : in    std_logic; 
          Cce     : in    std_logic; 
          clk     : in    std_logic; 
          Dadr    : in    std_logic_vector (4 downto 0); 
          DI      : in    std_logic_vector (31 downto 0); 
          DINTsel : in    std_logic; 
          GPR_WE  : in    std_logic; 
          IRce    : in    std_logic; 
          Itype   : in    std_logic; 
          jlink   : in    std_logic; 
          MARce   : in    std_logic; 
          MDRce   : in    std_logic; 
          MDRsel  : in    std_logic; 
          PCce    : in    std_logic; 
          reset   : in    std_logic; 
          right   : in    std_logic; 
          shift   : in    std_logic; 
          S1sel   : in    std_logic_vector (1 downto 0); 
          S2sel   : in    std_logic_vector (1 downto 0); 
          test    : in    std_logic; 
          AEQZ    : out   std_logic; 
          D       : out   std_logic_vector (31 downto 0); 
          DO      : out   std_logic_vector (31 downto 0); 
          Inst    : out   std_logic_vector (31 downto 0); 
          MAO     : out   std_logic_vector (31 downto 0));
end DLXDataPath_MUSER_Top_Level;

architecture BEHAVIORAL of DLXDataPath_MUSER_Top_Level is
   signal Aadr       : std_logic_vector (4 downto 0);
   signal ALUF       : std_logic_vector (2 downto 0);
   signal AO         : std_logic_vector (31 downto 0);
   signal Areg       : std_logic_vector (31 downto 0);
   signal Badr       : std_logic_vector (4 downto 0);
   signal Breg       : std_logic_vector (31 downto 0);
   signal Cadr       : std_logic_vector (4 downto 0);
   signal Creg       : std_logic_vector (31 downto 0);
   signal DINTO      : std_logic_vector (31 downto 0);
   signal MARreg     : std_logic_vector (31 downto 0);
   signal PCreg      : std_logic_vector (31 downto 0);
   signal sextimm    : std_logic_vector (31 downto 0);
   signal XLXN_51    : std_logic_vector (31 downto 0);
   signal XLXN_52    : std_logic_vector (31 downto 0);
   signal XLXN_53    : std_logic_vector (31 downto 0);
   signal XLXN_63    : std_logic_vector (31 downto 0);
   signal XLXN_64    : std_logic_vector (31 downto 0);
   signal XLXN_93    : std_logic_vector (31 downto 0);
   signal XLXN_98    : std_logic_vector (31 downto 0);
   signal XLXN_99    : std_logic_vector (31 downto 0);
   signal XLXN_100   : std_logic_vector (31 downto 0);
   signal DO_DUMMY   : std_logic_vector (31 downto 0);
   signal Inst_DUMMY : std_logic_vector (31 downto 0);
   component REG32CE
      port ( CLK  : in    std_logic; 
             CE   : in    std_logic; 
             DIN  : in    std_logic_vector (31 downto 0); 
             DOUT : out   std_logic_vector (31 downto 0));
   end component;
   
   component REG32RST
      port ( CLK  : in    std_logic; 
             CE   : in    std_logic; 
             RST  : in    std_logic; 
             DIN  : in    std_logic_vector (31 downto 0); 
             DOUT : out   std_logic_vector (31 downto 0));
   end component;
   
   component MUX32bit
      port ( sel : in    std_logic; 
             A   : in    std_logic_vector (31 downto 0); 
             B   : in    std_logic_vector (31 downto 0); 
             O   : out   std_logic_vector (31 downto 0));
   end component;
   
   component GPR_Env_MUSER_Top_Level
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
   
   component DLX_IRenvi
      port ( clk      : in    std_logic; 
             IRce     : in    std_logic; 
             D_in     : in    std_logic_vector (31 downto 0); 
             IR_OUT   : out   std_logic_vector (31 downto 0); 
             sext_imm : out   std_logic_vector (31 downto 0));
   end component;
   
   component DLX_MMU
      port ( AO  : in    std_logic_vector (31 downto 0); 
             MAO : out   std_logic_vector (31 downto 0));
   end component;
   
   component InsParser
      port ( Itype : in    std_logic; 
             Jlink : in    std_logic; 
             inst  : in    std_logic_vector (31 downto 0); 
             Aadr  : out   std_logic_vector (4 downto 0); 
             Badr  : out   std_logic_vector (4 downto 0); 
             Cadr  : out   std_logic_vector (4 downto 0); 
             ALUF  : out   std_logic_vector (2 downto 0));
   end component;
   
   component MUX4_32bit
      port ( A0  : in    std_logic_vector (31 downto 0); 
             A1  : in    std_logic_vector (31 downto 0); 
             A2  : in    std_logic_vector (31 downto 0); 
             A3  : in    std_logic_vector (31 downto 0); 
             sel : in    std_logic_vector (1 downto 0); 
             O   : out   std_logic_vector (31 downto 0));
   end component;
   
   component ALU_Envi_MUSER_Top_Level
      port ( A      : in    std_logic_vector (31 downto 0); 
             B      : in    std_logic_vector (31 downto 0); 
             ALUF   : in    std_logic_vector (2 downto 0); 
             add    : in    std_logic; 
             test   : in    std_logic; 
             ALUOUT : out   std_logic_vector (31 downto 0));
   end component;
   
   component SHIFTEnvi
      port ( shift : in    std_logic; 
             right : in    std_logic; 
             di    : in    std_logic_vector (31 downto 0); 
             do    : out   std_logic_vector (31 downto 0));
   end component;
   
   component DLXS2Consts
      port ( S22 : out   std_logic_vector (31 downto 0); 
             S23 : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   DO(31 downto 0) <= DO_DUMMY(31 downto 0);
   Inst(31 downto 0) <= Inst_DUMMY(31 downto 0);
   XLXI_1 : REG32CE
      port map (CE=>MARce,
                CLK=>clk,
                DIN(31 downto 0)=>DINTO(31 downto 0),
                DOUT(31 downto 0)=>MARreg(31 downto 0));
   
   XLXI_2 : REG32CE
      port map (CE=>Cce,
                CLK=>clk,
                DIN(31 downto 0)=>DINTO(31 downto 0),
                DOUT(31 downto 0)=>Creg(31 downto 0));
   
   XLXI_3 : REG32CE
      port map (CE=>Bce,
                CLK=>clk,
                DIN(31 downto 0)=>XLXN_51(31 downto 0),
                DOUT(31 downto 0)=>Breg(31 downto 0));
   
   XLXI_4 : REG32CE
      port map (CE=>Ace,
                CLK=>clk,
                DIN(31 downto 0)=>XLXN_52(31 downto 0),
                DOUT(31 downto 0)=>Areg(31 downto 0));
   
   XLXI_5 : REG32CE
      port map (CE=>MDRce,
                CLK=>clk,
                DIN(31 downto 0)=>XLXN_53(31 downto 0),
                DOUT(31 downto 0)=>DO_DUMMY(31 downto 0));
   
   XLXI_6 : REG32RST
      port map (CE=>PCce,
                CLK=>clk,
                DIN(31 downto 0)=>DINTO(31 downto 0),
                RST=>reset,
                DOUT(31 downto 0)=>PCreg(31 downto 0));
   
   XLXI_7 : MUX32bit
      port map (A(31 downto 0)=>DINTO(31 downto 0),
                B(31 downto 0)=>DI(31 downto 0),
                sel=>MDRsel,
                O(31 downto 0)=>XLXN_53(31 downto 0));
   
   XLXI_8 : GPR_Env_MUSER_Top_Level
      port map (Aadr(4 downto 0)=>Aadr(4 downto 0),
                Badr(4 downto 0)=>Badr(4 downto 0),
                C(31 downto 0)=>Creg(31 downto 0),
                Cadr(4 downto 0)=>Cadr(4 downto 0),
                clk=>clk,
                Dadr(4 downto 0)=>Dadr(4 downto 0),
                GPR_WE=>GPR_WE,
                A(31 downto 0)=>XLXN_52(31 downto 0),
                AEQZ_out=>AEQZ,
                B(31 downto 0)=>XLXN_51(31 downto 0),
                D(31 downto 0)=>D(31 downto 0));
   
   XLXI_10 : DLX_IRenvi
      port map (clk=>clk,
                D_in(31 downto 0)=>DI(31 downto 0),
                IRce=>IRce,
                IR_OUT(31 downto 0)=>Inst_DUMMY(31 downto 0),
                sext_imm(31 downto 0)=>sextimm(31 downto 0));
   
   XLXI_11 : DLX_MMU
      port map (AO(31 downto 0)=>AO(31 downto 0),
                MAO(31 downto 0)=>MAO(31 downto 0));
   
   XLXI_12 : InsParser
      port map (inst(31 downto 0)=>Inst_DUMMY(31 downto 0),
                Itype=>Itype,
                Jlink=>jlink,
                Aadr(4 downto 0)=>Aadr(4 downto 0),
                ALUF(2 downto 0)=>ALUF(2 downto 0),
                Badr(4 downto 0)=>Badr(4 downto 0),
                Cadr(4 downto 0)=>Cadr(4 downto 0));
   
   XLXI_13 : MUX4_32bit
      port map (A0(31 downto 0)=>PCreg(31 downto 0),
                A1(31 downto 0)=>Areg(31 downto 0),
                A2(31 downto 0)=>Breg(31 downto 0),
                A3(31 downto 0)=>DO_DUMMY(31 downto 0),
                sel(1 downto 0)=>S1sel(1 downto 0),
                O(31 downto 0)=>XLXN_98(31 downto 0));
   
   XLXI_14 : MUX4_32bit
      port map (A0(31 downto 0)=>Breg(31 downto 0),
                A1(31 downto 0)=>sextimm(31 downto 0),
                A2(31 downto 0)=>XLXN_63(31 downto 0),
                A3(31 downto 0)=>XLXN_64(31 downto 0),
                sel(1 downto 0)=>S2sel(1 downto 0),
                O(31 downto 0)=>XLXN_93(31 downto 0));
   
   XLXI_15 : ALU_Envi_MUSER_Top_Level
      port map (A(31 downto 0)=>XLXN_98(31 downto 0),
                add=>add,
                ALUF(2 downto 0)=>ALUF(2 downto 0),
                B(31 downto 0)=>XLXN_93(31 downto 0),
                test=>test,
                ALUOUT(31 downto 0)=>XLXN_99(31 downto 0));
   
   XLXI_16 : SHIFTEnvi
      port map (di(31 downto 0)=>XLXN_98(31 downto 0),
                right=>right,
                shift=>shift,
                do(31 downto 0)=>XLXN_100(31 downto 0));
   
   XLXI_17 : MUX32bit
      port map (A(31 downto 0)=>XLXN_99(31 downto 0),
                B(31 downto 0)=>XLXN_100(31 downto 0),
                sel=>DINTsel,
                O(31 downto 0)=>DINTO(31 downto 0));
   
   XLXI_18 : MUX32bit
      port map (A(31 downto 0)=>PCreg(31 downto 0),
                B(31 downto 0)=>MARreg(31 downto 0),
                sel=>Asel,
                O(31 downto 0)=>AO(31 downto 0));
   
   XLXI_53 : DLXS2Consts
      port map (S22(31 downto 0)=>XLXN_63(31 downto 0),
                S23(31 downto 0)=>XLXN_64(31 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity DLXControlTop_MUSER_Top_Level is
   port ( ack_n    : in    std_logic; 
          aeqz     : in    std_logic; 
          clk      : in    std_logic; 
          func     : in    std_logic_vector (5 downto 0); 
          opcode   : in    std_logic_vector (5 downto 0); 
          reset    : in    std_logic; 
          step_en  : in    std_logic; 
          Ace      : out   std_logic; 
          add      : out   std_logic; 
          Asel     : out   std_logic; 
          AS_N     : out   std_logic; 
          Bce      : out   std_logic; 
          busy     : out   std_logic; 
          Cce      : out   std_logic; 
          DINTsel  : out   std_logic; 
          DLXState : out   std_logic_vector (4 downto 0); 
          GPR_WE   : out   std_logic; 
          in_halt  : out   std_logic; 
          in_init  : out   std_logic; 
          IRce     : out   std_logic; 
          Itype    : out   std_logic; 
          jlink    : out   std_logic; 
          MACState : out   std_logic_vector (1 downto 0); 
          MARce    : out   std_logic; 
          MDRce    : out   std_logic; 
          MDRsel   : out   std_logic; 
          mr       : out   std_logic; 
          mw       : out   std_logic; 
          PCce     : out   std_logic; 
          right    : out   std_logic; 
          shift    : out   std_logic; 
          stop_n   : out   std_logic; 
          S1sel    : out   std_logic_vector (1 downto 0); 
          S2sel    : out   std_logic_vector (1 downto 0); 
          test     : out   std_logic; 
          WR_N     : out   std_logic);
end DLXControlTop_MUSER_Top_Level;

architecture BEHAVIORAL of DLXControlTop_MUSER_Top_Level is
   signal busy_DUMMY : std_logic;
   signal mr_DUMMY   : std_logic;
   signal mw_DUMMY   : std_logic;
   component DLXCntrlState
      port ( clk     : in    std_logic; 
             step_en : in    std_logic; 
             busy    : in    std_logic; 
             reset   : in    std_logic; 
             aeqz    : in    std_logic; 
             opcode  : in    std_logic_vector (5 downto 0); 
             func    : in    std_logic_vector (5 downto 0); 
             mw      : out   std_logic; 
             mr      : out   std_logic; 
             add     : out   std_logic; 
             test    : out   std_logic; 
             Itype   : out   std_logic; 
             jlink   : out   std_logic; 
             shift   : out   std_logic; 
             right   : out   std_logic; 
             Asel    : out   std_logic; 
             MDRsel  : out   std_logic; 
             DINTsel : out   std_logic; 
             IRce    : out   std_logic; 
             Ace     : out   std_logic; 
             Bce     : out   std_logic; 
             Cce     : out   std_logic; 
             PCce    : out   std_logic; 
             MARce   : out   std_logic; 
             MDRce   : out   std_logic; 
             GPR_WE  : out   std_logic; 
             in_init : out   std_logic; 
             in_halt : out   std_logic; 
             S2sel   : out   std_logic_vector (1 downto 0); 
             S1sel   : out   std_logic_vector (1 downto 0); 
             state_o : out   std_logic_vector (4 downto 0));
   end component;
   
   component MA_StateMac
      port ( clk     : in    std_logic; 
             reset   : in    std_logic; 
             mw      : in    std_logic; 
             mr      : in    std_logic; 
             ack_n   : in    std_logic; 
             AS_N    : out   std_logic; 
             WR_N    : out   std_logic; 
             stop_n  : out   std_logic; 
             busy    : out   std_logic; 
             state_o : out   std_logic_vector (1 downto 0));
   end component;
   
begin
   busy <= busy_DUMMY;
   mr <= mr_DUMMY;
   mw <= mw_DUMMY;
   XLXI_1 : DLXCntrlState
      port map (aeqz=>aeqz,
                busy=>busy_DUMMY,
                clk=>clk,
                func(5 downto 0)=>func(5 downto 0),
                opcode(5 downto 0)=>opcode(5 downto 0),
                reset=>reset,
                step_en=>step_en,
                Ace=>Ace,
                add=>add,
                Asel=>Asel,
                Bce=>Bce,
                Cce=>Cce,
                DINTsel=>DINTsel,
                GPR_WE=>GPR_WE,
                in_halt=>in_halt,
                in_init=>in_init,
                IRce=>IRce,
                Itype=>Itype,
                jlink=>jlink,
                MARce=>MARce,
                MDRce=>MDRce,
                MDRsel=>MDRsel,
                mr=>mr_DUMMY,
                mw=>mw_DUMMY,
                PCce=>PCce,
                right=>right,
                shift=>shift,
                state_o(4 downto 0)=>DLXState(4 downto 0),
                S1sel(1 downto 0)=>S1sel(1 downto 0),
                S2sel(1 downto 0)=>S2sel(1 downto 0),
                test=>test);
   
   XLXI_2 : MA_StateMac
      port map (ack_n=>ack_n,
                clk=>clk,
                mr=>mr_DUMMY,
                mw=>mw_DUMMY,
                reset=>reset,
                AS_N=>AS_N,
                busy=>busy_DUMMY,
                state_o(1 downto 0)=>MACState(1 downto 0),
                stop_n=>stop_n,
                WR_N=>WR_N);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity DLX_Top_MUSER_Top_Level is
   port ( ack_n   : in    std_logic; 
          clk     : in    std_logic; 
          Dadr    : in    std_logic_vector (4 downto 0); 
          DI      : in    std_logic_vector (31 downto 0); 
          reset   : in    std_logic; 
          step_en : in    std_logic; 
          Ace     : out   std_logic; 
          add     : out   std_logic; 
          aeqz    : out   std_logic; 
          Asel    : out   std_logic; 
          AS_N    : out   std_logic; 
          Bce     : out   std_logic; 
          busy    : out   std_logic; 
          Cce     : out   std_logic; 
          D       : out   std_logic_vector (31 downto 0); 
          DINTsel : out   std_logic; 
          DLXs    : out   std_logic_vector (4 downto 0); 
          DO      : out   std_logic_vector (31 downto 0); 
          GPR_WE  : out   std_logic; 
          in_halt : out   std_logic; 
          in_init : out   std_logic; 
          IRce    : out   std_logic; 
          Itype   : out   std_logic; 
          jlink   : out   std_logic; 
          MACs    : out   std_logic_vector (1 downto 0); 
          MAO     : out   std_logic_vector (31 downto 0); 
          MARce   : out   std_logic; 
          MDRce   : out   std_logic; 
          MDRsel  : out   std_logic; 
          mr      : out   std_logic; 
          mw      : out   std_logic; 
          PCce    : out   std_logic; 
          right   : out   std_logic; 
          shift   : out   std_logic; 
          stop_n  : out   std_logic; 
          S1sel   : out   std_logic_vector (1 downto 0); 
          S2sel   : out   std_logic_vector (1 downto 0); 
          test    : out   std_logic; 
          WR_N    : out   std_logic);
end DLX_Top_MUSER_Top_Level;

architecture BEHAVIORAL of DLX_Top_MUSER_Top_Level is
   signal inst          : std_logic_vector (31 downto 0);
   signal MARce_DUMMY   : std_logic;
   signal Bce_DUMMY     : std_logic;
   signal right_DUMMY   : std_logic;
   signal add_DUMMY     : std_logic;
   signal S1sel_DUMMY   : std_logic_vector (1 downto 0);
   signal MDRsel_DUMMY  : std_logic;
   signal aeqz_DUMMY    : std_logic;
   signal DINTsel_DUMMY : std_logic;
   signal Ace_DUMMY     : std_logic;
   signal S2sel_DUMMY   : std_logic_vector (1 downto 0);
   signal MDRce_DUMMY   : std_logic;
   signal shift_DUMMY   : std_logic;
   signal test_DUMMY    : std_logic;
   signal GPR_WE_DUMMY  : std_logic;
   signal PCce_DUMMY    : std_logic;
   signal jlink_DUMMY   : std_logic;
   signal Cce_DUMMY     : std_logic;
   signal Asel_DUMMY    : std_logic;
   signal Itype_DUMMY   : std_logic;
   signal IRce_DUMMY    : std_logic;
   component DLXControlTop_MUSER_Top_Level
      port ( clk      : in    std_logic; 
             reset    : in    std_logic; 
             step_en  : in    std_logic; 
             ack_n    : in    std_logic; 
             aeqz     : in    std_logic; 
             opcode   : in    std_logic_vector (5 downto 0); 
             func     : in    std_logic_vector (5 downto 0); 
             mw       : out   std_logic; 
             WR_N     : out   std_logic; 
             MACState : out   std_logic_vector (1 downto 0); 
             busy     : out   std_logic; 
             mr       : out   std_logic; 
             add      : out   std_logic; 
             test     : out   std_logic; 
             Itype    : out   std_logic; 
             jlink    : out   std_logic; 
             right    : out   std_logic; 
             Asel     : out   std_logic; 
             MDRsel   : out   std_logic; 
             DINTsel  : out   std_logic; 
             IRce     : out   std_logic; 
             Ace      : out   std_logic; 
             Bce      : out   std_logic; 
             Cce      : out   std_logic; 
             PCce     : out   std_logic; 
             MARce    : out   std_logic; 
             MDRce    : out   std_logic; 
             GPR_WE   : out   std_logic; 
             in_init  : out   std_logic; 
             in_halt  : out   std_logic; 
             DLXState : out   std_logic_vector (4 downto 0); 
             AS_N     : out   std_logic; 
             stop_n   : out   std_logic; 
             shift    : out   std_logic; 
             S2sel    : out   std_logic_vector (1 downto 0); 
             S1sel    : out   std_logic_vector (1 downto 0));
   end component;
   
   component DLXDataPath_MUSER_Top_Level
      port ( clk     : in    std_logic; 
             PCce    : in    std_logic; 
             MARce   : in    std_logic; 
             MDRce   : in    std_logic; 
             GPR_WE  : in    std_logic; 
             S1sel   : in    std_logic_vector (1 downto 0); 
             S2sel   : in    std_logic_vector (1 downto 0); 
             add     : in    std_logic; 
             test    : in    std_logic; 
             Itype   : in    std_logic; 
             jlink   : in    std_logic; 
             shift   : in    std_logic; 
             right   : in    std_logic; 
             Asel    : in    std_logic; 
             MDRsel  : in    std_logic; 
             DINTsel : in    std_logic; 
             IRce    : in    std_logic; 
             Ace     : in    std_logic; 
             Bce     : in    std_logic; 
             Cce     : in    std_logic; 
             reset   : in    std_logic; 
             Dadr    : in    std_logic_vector (4 downto 0); 
             DI      : in    std_logic_vector (31 downto 0); 
             DO      : out   std_logic_vector (31 downto 0); 
             D       : out   std_logic_vector (31 downto 0); 
             AEQZ    : out   std_logic; 
             MAO     : out   std_logic_vector (31 downto 0); 
             Inst    : out   std_logic_vector (31 downto 0));
   end component;
   
begin
   Ace <= Ace_DUMMY;
   add <= add_DUMMY;
   aeqz <= aeqz_DUMMY;
   Asel <= Asel_DUMMY;
   Bce <= Bce_DUMMY;
   Cce <= Cce_DUMMY;
   DINTsel <= DINTsel_DUMMY;
   GPR_WE <= GPR_WE_DUMMY;
   IRce <= IRce_DUMMY;
   Itype <= Itype_DUMMY;
   jlink <= jlink_DUMMY;
   MARce <= MARce_DUMMY;
   MDRce <= MDRce_DUMMY;
   MDRsel <= MDRsel_DUMMY;
   PCce <= PCce_DUMMY;
   right <= right_DUMMY;
   shift <= shift_DUMMY;
   S1sel(1 downto 0) <= S1sel_DUMMY(1 downto 0);
   S2sel(1 downto 0) <= S2sel_DUMMY(1 downto 0);
   test <= test_DUMMY;
   XLXI_2 : DLXControlTop_MUSER_Top_Level
      port map (ack_n=>ack_n,
                aeqz=>aeqz_DUMMY,
                clk=>clk,
                func(5 downto 0)=>inst(5 downto 0),
                opcode(5 downto 0)=>inst(31 downto 26),
                reset=>reset,
                step_en=>step_en,
                Ace=>Ace_DUMMY,
                add=>add_DUMMY,
                Asel=>Asel_DUMMY,
                AS_N=>AS_N,
                Bce=>Bce_DUMMY,
                busy=>busy,
                Cce=>Cce_DUMMY,
                DINTsel=>DINTsel_DUMMY,
                DLXState(4 downto 0)=>DLXs(4 downto 0),
                GPR_WE=>GPR_WE_DUMMY,
                in_halt=>in_halt,
                in_init=>in_init,
                IRce=>IRce_DUMMY,
                Itype=>Itype_DUMMY,
                jlink=>jlink_DUMMY,
                MACState(1 downto 0)=>MACs(1 downto 0),
                MARce=>MARce_DUMMY,
                MDRce=>MDRce_DUMMY,
                MDRsel=>MDRsel_DUMMY,
                mr=>mr,
                mw=>mw,
                PCce=>PCce_DUMMY,
                right=>right_DUMMY,
                shift=>shift_DUMMY,
                stop_n=>stop_n,
                S1sel(1 downto 0)=>S1sel_DUMMY(1 downto 0),
                S2sel(1 downto 0)=>S2sel_DUMMY(1 downto 0),
                test=>test_DUMMY,
                WR_N=>WR_N);
   
   XLXI_3 : DLXDataPath_MUSER_Top_Level
      port map (Ace=>Ace_DUMMY,
                add=>add_DUMMY,
                Asel=>Asel_DUMMY,
                Bce=>Bce_DUMMY,
                Cce=>Cce_DUMMY,
                clk=>clk,
                Dadr(4 downto 0)=>Dadr(4 downto 0),
                DI(31 downto 0)=>DI(31 downto 0),
                DINTsel=>DINTsel_DUMMY,
                GPR_WE=>GPR_WE_DUMMY,
                IRce=>IRce_DUMMY,
                Itype=>Itype_DUMMY,
                jlink=>jlink_DUMMY,
                MARce=>MARce_DUMMY,
                MDRce=>MDRce_DUMMY,
                MDRsel=>MDRsel_DUMMY,
                PCce=>PCce_DUMMY,
                reset=>reset,
                right=>right_DUMMY,
                shift=>shift_DUMMY,
                S1sel(1 downto 0)=>S1sel_DUMMY(1 downto 0),
                S2sel(1 downto 0)=>S2sel_DUMMY(1 downto 0),
                test=>test_DUMMY,
                AEQZ=>aeqz_DUMMY,
                D(31 downto 0)=>D(31 downto 0),
                DO(31 downto 0)=>DO(31 downto 0),
                Inst(31 downto 0)=>inst(31 downto 0),
                MAO(31 downto 0)=>MAO(31 downto 0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity BUF5_MUSER_Top_Level is
   port ( Din  : in    std_logic_vector (4 downto 0); 
          Dout : out   std_logic_vector (4 downto 0));
end BUF5_MUSER_Top_Level;

architecture BEHAVIORAL of BUF5_MUSER_Top_Level is
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

entity Slave_control_MUSER_Top_Level is
   port ( AI       : in    std_logic_vector (9 downto 0); 
          CARDSEL  : in    std_logic; 
          clk      : in    std_logic; 
          WR_N     : in    std_logic; 
          req_addr : out   std_logic_vector (4 downto 0); 
          SACK_N   : out   std_logic);
end Slave_control_MUSER_Top_Level;

architecture BEHAVIORAL of Slave_control_MUSER_Top_Level is
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
   
   component BUF5_MUSER_Top_Level
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
   
   XLXI_17 : BUF5_MUSER_Top_Level
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

entity Monitor_slave_MUSER_Top_Level is
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
end Monitor_slave_MUSER_Top_Level;

architecture BEHAVIORAL of Monitor_slave_MUSER_Top_Level is
   component MUX4_32bit
      port ( A0  : in    std_logic_vector (31 downto 0); 
             A1  : in    std_logic_vector (31 downto 0); 
             A2  : in    std_logic_vector (31 downto 0); 
             A3  : in    std_logic_vector (31 downto 0); 
             sel : in    std_logic_vector (1 downto 0); 
             O   : out   std_logic_vector (31 downto 0));
   end component;
   
   component Slave_control_MUSER_Top_Level
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
   
   XLXI_2 : Slave_control_MUSER_Top_Level
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

entity LA_control_MUSER_Top_Level is
   port ( clk     : in    std_logic; 
          in_init : in    std_logic; 
          step_en : in    std_logic; 
          stop_n  : in    std_logic; 
          LA_WE   : out   std_logic; 
          sts_ce  : out   std_logic);
end LA_control_MUSER_Top_Level;

architecture BEHAVIORAL of LA_control_MUSER_Top_Level is
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

entity Logic_anaylzer_MUSER_Top_Level is
   port ( AI             : in    std_logic_vector (4 downto 0); 
          clk            : in    std_logic; 
          in_init        : in    std_logic; 
          Monitored_DATA : in    std_logic_vector (31 downto 0); 
          step_en        : in    std_logic; 
          stop_n         : in    std_logic; 
          DOUT           : out   std_logic_vector (31 downto 0); 
          STATUS         : out   std_logic_vector (4 downto 0));
end Logic_anaylzer_MUSER_Top_Level;

architecture BEHAVIORAL of Logic_anaylzer_MUSER_Top_Level is
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
   
   component LA_control_MUSER_Top_Level
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
   
   XLXI_5 : LA_control_MUSER_Top_Level
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

entity Monitor_MUSER_Top_Level is
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
end Monitor_MUSER_Top_Level;

architecture BEHAVIORAL of Monitor_MUSER_Top_Level is
   signal XLXN_13   : std_logic_vector (31 downto 0);
   signal Y         : std_logic_vector (31 downto 0);
   component Logic_anaylzer_MUSER_Top_Level
      port ( clk            : in    std_logic; 
             AI             : in    std_logic_vector (4 downto 0); 
             step_en        : in    std_logic; 
             stop_n         : in    std_logic; 
             in_init        : in    std_logic; 
             Monitored_DATA : in    std_logic_vector (31 downto 0); 
             STATUS         : out   std_logic_vector (4 downto 0); 
             DOUT           : out   std_logic_vector (31 downto 0));
   end component;
   
   component Monitor_slave_MUSER_Top_Level
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
   XLXI_1 : Logic_anaylzer_MUSER_Top_Level
      port map (AI(4 downto 0)=>AI(4 downto 0),
                clk=>clk,
                in_init=>in_init,
                Monitored_DATA(31 downto 0)=>Monitored(31 downto 0),
                step_en=>step_en,
                stop_n=>stop_n,
                DOUT(31 downto 0)=>XLXN_13(31 downto 0),
                STATUS(4 downto 0)=>Y(4 downto 0));
   
   XLXI_2 : Monitor_slave_MUSER_Top_Level
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Top_Level is
   port ( fpgaClk_i : in    std_logic; 
          sdClkFb_i : in    std_logic; 
          sdAddr_o  : out   std_logic_vector (12 downto 0); 
          sdBs_o    : out   std_logic_vector (1 downto 0); 
          sdCas_bo  : out   std_logic; 
          sdCe_bo   : out   std_logic; 
          sdCke_o   : out   std_logic; 
          sdClk_o   : out   std_logic; 
          sdDqmh_o  : out   std_logic; 
          sdDqml_o  : out   std_logic; 
          sdRas_bo  : out   std_logic; 
          sdWe_bo   : out   std_logic; 
          sdData_io : inout std_logic_vector (15 downto 0));
end Top_Level;

architecture BEHAVIORAL of Top_Level is
   attribute BOX_TYPE   : string ;
   signal ACK_N          : std_logic;
   signal AI             : std_logic_vector (9 downto 0);
   signal AS_N           : std_logic;
   signal Card_Sel       : std_logic;
   signal CLK            : std_logic;
   signal DO             : std_logic_vector (31 downto 0);
   signal IN_INIT        : std_logic;
   signal MAO            : std_logic_vector (31 downto 0);
   signal MDO            : std_logic_vector (31 downto 0);
   signal Monitored_data : std_logic_vector (31 downto 0);
   signal RACK_N         : std_logic;
   signal reg_addr       : std_logic_vector (4 downto 0);
   signal REG_OUT        : std_logic_vector (31 downto 0);
   signal RESET          : std_logic;
   signal Rsel           : std_logic;
   signal R_DO           : std_logic_vector (31 downto 0);
   signal SACK_N         : std_logic;
   signal SDO            : std_logic_vector (31 downto 0);
   signal STEP_EN        : std_logic;
   signal stop_n         : std_logic;
   signal WR_IN_N        : std_logic;
   signal WR_OUT_N       : std_logic;
   component IO_LOGIC_U
      port ( AS_N_i    : in    std_logic; 
             fpgaClk_i : in    std_logic; 
             in_init_i : in    std_logic; 
             RACK_N_i  : in    std_logic; 
             SACK_N_i  : in    std_logic; 
             sdClkFb_i : in    std_logic; 
             WR_N_i    : in    std_logic; 
             MA_i      : in    std_logic_vector (31 downto 0); 
             MD_i      : in    std_logic_vector (31 downto 0); 
             RD_i      : in    std_logic_vector (31 downto 0); 
             SD_i      : in    std_logic_vector (31 downto 0); 
             CLK       : out   std_logic; 
             MACK_N_o  : out   std_logic; 
             RESET     : out   std_logic; 
             Rsel_o    : out   std_logic; 
             sdCas_bo  : out   std_logic; 
             sdCe_bo   : out   std_logic; 
             sdCke_o   : out   std_logic; 
             sdClk_o   : out   std_logic; 
             sdDqmh_o  : out   std_logic; 
             sdDqml_o  : out   std_logic; 
             sdRas_bo  : out   std_logic; 
             sdWe_bo   : out   std_logic; 
             Ssel_o    : out   std_logic; 
             step_en_o : out   std_logic; 
             WR_N_o    : out   std_logic; 
             A_o       : out   std_logic_vector (9 downto 0); 
             DO        : out   std_logic_vector (31 downto 0); 
             sdAddr_o  : out   std_logic_vector (12 downto 0); 
             sdBs_o    : out   std_logic_vector (1 downto 0); 
             sdData_io : inout std_logic_vector (15 downto 0));
   end component;
   
   component Monitor_MUSER_Top_Level
      port ( clk       : in    std_logic; 
             AI        : in    std_logic_vector (9 downto 0); 
             CARDSEL   : in    std_logic; 
             WR_N      : in    std_logic; 
             C         : in    std_logic_vector (31 downto 0); 
             Monitored : in    std_logic_vector (31 downto 0); 
             D         : in    std_logic_vector (31 downto 0); 
             stop_n    : in    std_logic; 
             step_en   : in    std_logic; 
             in_init   : in    std_logic; 
             SDO       : out   std_logic_vector (31 downto 0); 
             reg_addr  : out   std_logic_vector (4 downto 0); 
             SACK_N    : out   std_logic);
   end component;
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component DLX_Top_MUSER_Top_Level
      port ( reset   : in    std_logic; 
             clk     : in    std_logic; 
             step_en : in    std_logic; 
             ack_n   : in    std_logic; 
             Dadr    : in    std_logic_vector (4 downto 0); 
             DI      : in    std_logic_vector (31 downto 0); 
             aeqz    : out   std_logic; 
             mw      : out   std_logic; 
             WR_N    : out   std_logic; 
             busy    : out   std_logic; 
             mr      : out   std_logic; 
             Asel    : out   std_logic; 
             MDRsel  : out   std_logic; 
             jlink   : out   std_logic; 
             DINTsel : out   std_logic; 
             Ace     : out   std_logic; 
             Cce     : out   std_logic; 
             PCce    : out   std_logic; 
             MARce   : out   std_logic; 
             Bce     : out   std_logic; 
             MDRce   : out   std_logic; 
             GPR_WE  : out   std_logic; 
             in_init : out   std_logic; 
             DLXs    : out   std_logic_vector (4 downto 0); 
             AS_N    : out   std_logic; 
             stop_n  : out   std_logic; 
             in_halt : out   std_logic; 
             shift   : out   std_logic; 
             S1sel   : out   std_logic_vector (1 downto 0); 
             MAO     : out   std_logic_vector (31 downto 0); 
             D       : out   std_logic_vector (31 downto 0); 
             DO      : out   std_logic_vector (31 downto 0); 
             S2sel   : out   std_logic_vector (1 downto 0); 
             MACs    : out   std_logic_vector (1 downto 0); 
             add     : out   std_logic; 
             test    : out   std_logic; 
             Itype   : out   std_logic; 
             right   : out   std_logic; 
             IRce    : out   std_logic);
   end component;
   
begin
   XLXI_23 : IO_LOGIC_U
      port map (AS_N_i=>AS_N,
                fpgaClk_i=>fpgaClk_i,
                in_init_i=>IN_INIT,
                MA_i(31 downto 0)=>MAO(31 downto 0),
                MD_i(31 downto 0)=>MDO(31 downto 0),
                RACK_N_i=>RACK_N,
                RD_i(31 downto 0)=>R_DO(31 downto 0),
                SACK_N_i=>SACK_N,
                sdClkFb_i=>sdClkFb_i,
                SD_i(31 downto 0)=>SDO(31 downto 0),
                WR_N_i=>WR_OUT_N,
                A_o(9 downto 0)=>AI(9 downto 0),
                CLK=>CLK,
                DO(31 downto 0)=>DO(31 downto 0),
                MACK_N_o=>ACK_N,
                RESET=>RESET,
                Rsel_o=>Rsel,
                sdAddr_o(12 downto 0)=>sdAddr_o(12 downto 0),
                sdBs_o(1 downto 0)=>sdBs_o(1 downto 0),
                sdCas_bo=>sdCas_bo,
                sdCe_bo=>sdCe_bo,
                sdCke_o=>sdCke_o,
                sdClk_o=>sdClk_o,
                sdDqmh_o=>sdDqmh_o,
                sdDqml_o=>sdDqml_o,
                sdRas_bo=>sdRas_bo,
                sdWe_bo=>sdWe_bo,
                Ssel_o=>Card_Sel,
                step_en_o=>STEP_EN,
                WR_N_o=>WR_IN_N,
                sdData_io(15 downto 0)=>sdData_io(15 downto 0));
   
   XLXI_29 : Monitor_MUSER_Top_Level
      port map (AI(9 downto 0)=>AI(9 downto 0),
                C(31 downto 0)=>MAO(31 downto 0),
                CARDSEL=>Card_Sel,
                clk=>CLK,
                D(31 downto 0)=>REG_OUT(31 downto 0),
                in_init=>IN_INIT,
                Monitored(31 downto 0)=>Monitored_data(31 downto 0),
                step_en=>STEP_EN,
                stop_n=>stop_n,
                WR_N=>WR_IN_N,
                reg_addr(4 downto 0)=>reg_addr(4 downto 0),
                SACK_N=>SACK_N,
                SDO(31 downto 0)=>SDO(31 downto 0));
   
   XLXI_31 : BUF
      port map (I=>IN_INIT,
                O=>Monitored_data(0));
   
   XLXI_32 : BUF
      port map (I=>STEP_EN,
                O=>Monitored_data(1));
   
   XLXI_35 : BUF
      port map (I=>AS_N,
                O=>Monitored_data(2));
   
   XLXI_36 : BUF
      port map (I=>WR_OUT_N,
                O=>Monitored_data(3));
   
   XLXI_37 : BUF
      port map (I=>ACK_N,
                O=>Monitored_data(4));
   
   XLXI_46 : DLX_Top_MUSER_Top_Level
      port map (ack_n=>ACK_N,
                clk=>CLK,
                Dadr(4 downto 0)=>reg_addr(4 downto 0),
                DI(31 downto 0)=>DO(31 downto 0),
                reset=>RESET,
                step_en=>STEP_EN,
                Ace=>Monitored_data(23),
                add=>Monitored_data(20),
                aeqz=>Monitored_data(16),
                Asel=>open,
                AS_N=>AS_N,
                Bce=>Monitored_data(26),
                busy=>Monitored_data(15),
                Cce=>Monitored_data(24),
                D(31 downto 0)=>REG_OUT(31 downto 0),
                DINTsel=>open,
                DLXs(4 downto 0)=>Monitored_data(9 downto 5),
                DO(31 downto 0)=>MDO(31 downto 0),
                GPR_WE=>Monitored_data(27),
                in_halt=>Monitored_data(12),
                in_init=>IN_INIT,
                IRce=>Monitored_data(28),
                Itype=>Monitored_data(18),
                jlink=>Monitored_data(17),
                MACs(1 downto 0)=>Monitored_data(11 downto 10),
                MAO(31 downto 0)=>MAO(31 downto 0),
                MARce=>open,
                MDRce=>open,
                MDRsel=>open,
                mr=>Monitored_data(13),
                mw=>Monitored_data(14),
                PCce=>Monitored_data(25),
                right=>Monitored_data(22),
                shift=>Monitored_data(21),
                stop_n=>stop_n,
                S1sel=>open,
                S2sel=>open,
                test=>Monitored_data(19),
                WR_N=>WR_OUT_N);
   
end BEHAVIORAL;



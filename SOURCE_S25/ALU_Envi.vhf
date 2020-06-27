--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : ALU_Envi.vhf
-- /___/   /\     Timestamp : 06/23/2020 20:13:28
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/C2/SOURCE_S25/ALU_Envi.vhf -w E:/adlx/C2/SOURCE_S25/ALU_Envi.sch
--Design Name: ALU_Envi
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M2_1_HXILINX_ALU_Envi -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_ALU_Envi is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_ALU_Envi;

architecture M2_1_HXILINX_ALU_Envi_V of M2_1_HXILINX_ALU_Envi is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_ALU_Envi_V;
----- CELL ADSU16_HXILINX_ALU_Envi -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADSU16_HXILINX_ALU_Envi is
port(
    CO   : out std_logic;
    OFL  : out std_logic;
    S    : out std_logic_vector(15 downto 0);

    A    : in std_logic_vector(15 downto 0);
    ADD  : in std_logic;
    B    : in std_logic_vector(15 downto 0);
    CI   : in std_logic
  );
end ADSU16_HXILINX_ALU_Envi;

architecture ADSU16_HXILINX_ALU_Envi_V of ADSU16_HXILINX_ALU_Envi is

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
  
end ADSU16_HXILINX_ALU_Envi_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CSA32_MUSER_ALU_Envi is
   port ( A       : in    std_logic_vector (31 downto 0); 
          B       : in    std_logic_vector (31 downto 0); 
          SUB     : in    std_logic; 
          ALU_OUT : out   std_logic_vector (31 downto 0); 
          NEG     : out   std_logic);
end CSA32_MUSER_ALU_Envi;

architecture BEHAVIORAL of CSA32_MUSER_ALU_Envi is
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
   component ADSU16_HXILINX_ALU_Envi
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
   
   component M2_1_HXILINX_ALU_Envi
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_12";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_13";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_14";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_15";
begin
   XLXI_1 : ADSU16_HXILINX_ALU_Envi
      port map (A(15 downto 0)=>A(31 downto 16),
                ADD=>N_SUB,
                B(15 downto 0)=>B(31 downto 16),
                CI=>XLXN_13,
                CO=>Cn1,
                OFL=>XLXN_23,
                S(15 downto 0)=>XLXN_24(15 downto 0));
   
   XLXI_2 : ADSU16_HXILINX_ALU_Envi
      port map (A(15 downto 0)=>A(31 downto 16),
                ADD=>N_SUB,
                B(15 downto 0)=>B(31 downto 16),
                CI=>XLXN_17,
                CO=>Cn0,
                OFL=>XLXN_26,
                S(15 downto 0)=>XLXN_54(15 downto 0));
   
   XLXI_3 : ADSU16_HXILINX_ALU_Envi
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
   
   XLXI_15 : M2_1_HXILINX_ALU_Envi
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

entity Comparator32_MUSER_ALU_Envi is
   port ( F        : in    std_logic_vector (2 downto 0); 
          neg      : in    std_logic; 
          S        : in    std_logic_vector (31 downto 0); 
          COMP_OUT : out   std_logic);
end Comparator32_MUSER_ALU_Envi;

architecture BEHAVIORAL of Comparator32_MUSER_ALU_Envi is
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

entity ALU_Envi is
   port ( A      : in    std_logic_vector (31 downto 0); 
          add    : in    std_logic; 
          ALUF   : in    std_logic_vector (2 downto 0); 
          B      : in    std_logic_vector (31 downto 0); 
          test   : in    std_logic; 
          ALUOUT : out   std_logic_vector (31 downto 0));
end ALU_Envi;

architecture BEHAVIORAL of ALU_Envi is
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
   
   component Comparator32_MUSER_ALU_Envi
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
   
   component CSA32_MUSER_ALU_Envi
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
   
   XLXI_16 : Comparator32_MUSER_ALU_Envi
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
   
   XLXI_24 : CSA32_MUSER_ALU_Envi
      port map (A(31 downto 0)=>A(31 downto 0),
                B(31 downto 0)=>B(31 downto 0),
                SUB=>sub,
                ALU_OUT(31 downto 0)=>S(31 downto 0),
                NEG=>neg);
   
end BEHAVIORAL;



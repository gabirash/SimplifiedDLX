--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : CSA32_drc.vhf
-- /___/   /\     Timestamp : 06/15/2020 11:42:49
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan6 -flat -suppress -vhdl CSA32_drc.vhf -w C:/Users/gabon/Desktop/Home_S25/CSA32.sch
--Design Name: CSA32
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M2_1_HXILINX_CSA32 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_CSA32 is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_CSA32;

architecture M2_1_HXILINX_CSA32_V of M2_1_HXILINX_CSA32 is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_CSA32_V;
----- CELL ADSU16_HXILINX_CSA32 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADSU16_HXILINX_CSA32 is
port(
    CO   : out std_logic;
    OFL  : out std_logic;
    S    : out std_logic_vector(15 downto 0);

    A    : in std_logic_vector(15 downto 0);
    ADD  : in std_logic;
    B    : in std_logic_vector(15 downto 0);
    CI   : in std_logic
  );
end ADSU16_HXILINX_CSA32;

architecture ADSU16_HXILINX_CSA32_V of ADSU16_HXILINX_CSA32 is

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
  
end ADSU16_HXILINX_CSA32_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity CSA32 is
   port ( A       : in    std_logic_vector (31 downto 0); 
          B       : in    std_logic_vector (31 downto 0); 
          SUB     : in    std_logic; 
          ALU_OUT : out   std_logic_vector (31 downto 0); 
          NEG     : out   std_logic);
end CSA32;

architecture BEHAVIORAL of CSA32 is
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
   component ADSU16_HXILINX_CSA32
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
   
   component M2_1_HXILINX_CSA32
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_1";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_2";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_3";
begin
   XLXI_1 : ADSU16_HXILINX_CSA32
      port map (A(15 downto 0)=>A(31 downto 16),
                ADD=>N_SUB,
                B(15 downto 0)=>B(31 downto 16),
                CI=>XLXN_13,
                CO=>Cn1,
                OFL=>XLXN_23,
                S(15 downto 0)=>XLXN_24(15 downto 0));
   
   XLXI_2 : ADSU16_HXILINX_CSA32
      port map (A(15 downto 0)=>A(31 downto 16),
                ADD=>N_SUB,
                B(15 downto 0)=>B(31 downto 16),
                CI=>XLXN_17,
                CO=>Cn0,
                OFL=>XLXN_26,
                S(15 downto 0)=>XLXN_54(15 downto 0));
   
   XLXI_3 : ADSU16_HXILINX_CSA32
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
   
   XLXI_15 : M2_1_HXILINX_CSA32
      port map (D0=>Cn0,
                D1=>Cn1,
                S0=>Ck,
                O=>Cn);
   
end BEHAVIORAL;



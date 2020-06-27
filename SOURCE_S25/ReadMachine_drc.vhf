--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : ReadMachine_drc.vhf
-- /___/   /\     Timestamp : 05/26/2020 11:19:55
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan6 -flat -suppress -vhdl ReadMachine_drc.vhf -w E:/adlx/C2/SOURCE_S25/ReadMachine.sch
--Design Name: ReadMachine
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

entity ReadMachine is
   port ( ack_n   : in    std_logic; 
          clk     : in    std_logic; 
          DIN     : in    std_logic_vector (31 downto 0); 
          reset   : in    std_logic; 
          step_en : in    std_logic; 
          AS_N    : out   std_logic; 
          in_init : out   std_logic; 
          MAO     : out   std_logic_vector (31 downto 0); 
          RDO     : out   std_logic_vector (31 downto 0); 
          state   : out   std_logic_vector (1 downto 0); 
          stop_n  : out   std_logic; 
          WR_N    : out   std_logic);
end ReadMachine;

architecture BEHAVIORAL of ReadMachine is
   attribute BOX_TYPE   : string ;
   signal le          : std_logic;
   signal XLXN_32     : std_logic_vector (15 downto 0);
   signal state_DUMMY : std_logic_vector (1 downto 0);
   component ReadStateMac
      port ( step_en   : in    std_logic; 
             reset     : in    std_logic; 
             ACK_N     : in    std_logic; 
             clk       : in    std_logic; 
             AS_N      : out   std_logic; 
             in_init   : out   std_logic; 
             WR_N_out  : out   std_logic; 
             stop_n    : out   std_logic; 
             state_out : out   std_logic_vector (1 downto 0));
   end component;
   
   component REG32CE
      port ( CLK  : in    std_logic; 
             CE   : in    std_logic; 
             DIN  : in    std_logic_vector (31 downto 0); 
             DOUT : out   std_logic_vector (31 downto 0));
   end component;
   
   component CNT16
      port ( clk   : in    std_logic; 
             ce    : in    std_logic; 
             reset : in    std_logic; 
             cnt_o : out   std_logic_vector (15 downto 0));
   end component;
   
   component cnt16to32
      port ( cnt16_o : in    std_logic_vector (15 downto 0); 
             cnt32_o : out   std_logic_vector (31 downto 0));
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   state(1 downto 0) <= state_DUMMY(1 downto 0);
   XLXI_1 : ReadStateMac
      port map (ACK_N=>ack_n,
                clk=>clk,
                reset=>reset,
                step_en=>step_en,
                AS_N=>AS_N,
                in_init=>in_init,
                state_out(1 downto 0)=>state_DUMMY(1 downto 0),
                stop_n=>stop_n,
                WR_N_out=>WR_N);
   
   XLXI_2 : REG32CE
      port map (CE=>le,
                CLK=>clk,
                DIN(31 downto 0)=>DIN(31 downto 0),
                DOUT(31 downto 0)=>RDO(31 downto 0));
   
   XLXI_3 : CNT16
      port map (ce=>le,
                clk=>clk,
                reset=>reset,
                cnt_o(15 downto 0)=>XLXN_32(15 downto 0));
   
   XLXI_4 : cnt16to32
      port map (cnt16_o(15 downto 0)=>XLXN_32(15 downto 0),
                cnt32_o(31 downto 0)=>MAO(31 downto 0));
   
   XLXI_5 : AND2
      port map (I0=>state_DUMMY(1),
                I1=>state_DUMMY(0),
                O=>le);
   
end BEHAVIORAL;



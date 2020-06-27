--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Control_LS_top_drc.vhf
-- /___/   /\     Timestamp : 06/02/2020 09:51:20
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\unwrapped\sch2hdl.exe -intstyle ise -family spartan6 -flat -suppress -vhdl Control_LS_top_drc.vhf -w C:/Users/oz/Desktop/Home_S25/Control_LS_top.sch
--Design Name: Control_LS_top
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

entity Control_LS_top is
   port ( ack_n     : in    std_logic; 
          clk       : in    std_logic; 
          opcode    : in    std_logic_vector (5 downto 0); 
          reset     : in    std_logic; 
          step_en   : in    std_logic; 
          AdmSelect : out   std_logic; 
          AS_N      : out   std_logic; 
          Bce       : out   std_logic; 
          busy      : out   std_logic; 
          Cce       : out   std_logic; 
          GPR_we    : out   std_logic; 
          in_init   : out   std_logic; 
          IRce      : out   std_logic; 
          mr        : out   std_logic; 
          mw        : out   std_logic; 
          PCce      : out   std_logic; 
          stateLS   : out   std_logic_vector (2 downto 0); 
          stateMAC  : out   std_logic_vector (1 downto 0); 
          stop_n    : out   std_logic; 
          WR_N      : out   std_logic);
end Control_LS_top;

architecture BEHAVIORAL of Control_LS_top is
   signal busy_DUMMY : std_logic;
   signal mr_DUMMY   : std_logic;
   signal mw_DUMMY   : std_logic;
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
   
   component Control_LS_stateMac
      port ( clk       : in    std_logic; 
             step_en   : in    std_logic; 
             busy      : in    std_logic; 
             reset     : in    std_logic; 
             opcode    : in    std_logic_vector (5 downto 0); 
             mw        : out   std_logic; 
             mr        : out   std_logic; 
             IRce      : out   std_logic; 
             Cce       : out   std_logic; 
             PCce      : out   std_logic; 
             Bce       : out   std_logic; 
             GPR_WE    : out   std_logic; 
             AdmSelect : out   std_logic; 
             in_init   : out   std_logic; 
             state_o   : out   std_logic_vector (2 downto 0));
   end component;
   
begin
   busy <= busy_DUMMY;
   mr <= mr_DUMMY;
   mw <= mw_DUMMY;
   XLXI_1 : MA_StateMac
      port map (ack_n=>ack_n,
                clk=>clk,
                mr=>mr_DUMMY,
                mw=>mw_DUMMY,
                reset=>reset,
                AS_N=>AS_N,
                busy=>busy_DUMMY,
                state_o(1 downto 0)=>stateMAC(1 downto 0),
                stop_n=>stop_n,
                WR_N=>WR_N);
   
   XLXI_2 : Control_LS_stateMac
      port map (busy=>busy_DUMMY,
                clk=>clk,
                opcode(5 downto 0)=>opcode(5 downto 0),
                reset=>reset,
                step_en=>step_en,
                AdmSelect=>AdmSelect,
                Bce=>Bce,
                Cce=>Cce,
                GPR_WE=>GPR_we,
                in_init=>in_init,
                IRce=>IRce,
                mr=>mr_DUMMY,
                mw=>mw_DUMMY,
                PCce=>PCce,
                state_o(2 downto 0)=>stateLS(2 downto 0));
   
end BEHAVIORAL;



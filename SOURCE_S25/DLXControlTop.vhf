--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : DLXControlTop.vhf
-- /___/   /\     Timestamp : 06/23/2020 20:13:30
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/adlx/C2/SOURCE_S25/DLXControlTop.vhf -w E:/adlx/C2/SOURCE_S25/DLXControlTop.sch
--Design Name: DLXControlTop
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

entity DLXControlTop is
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
end DLXControlTop;

architecture BEHAVIORAL of DLXControlTop is
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



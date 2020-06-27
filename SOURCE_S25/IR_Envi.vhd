----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:39:33 05/28/2020 
-- Design Name: 
-- Module Name:    IR_Envi - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IR_Envi is
    Port ( clk : in  STD_LOGIC;
           IRce : in  STD_LOGIC;
           D_in : in  STD_LOGIC_VECTOR (31 downto 0);
           opcode : out  STD_LOGIC_VECTOR (5 downto 0);
           Badr : out  STD_LOGIC_VECTOR (4 downto 0);
           Cadr : out  STD_LOGIC_VECTOR (4 downto 0);
           imm : out  STD_LOGIC_VECTOR (15 downto 0));
end IR_Envi;

architecture Behavioral of IR_Envi is

signal INST : STD_LOGIC_VECTOR(31 downto 0);
component REG32CE is 
		Port ( CLK : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           DIN : in  STD_LOGIC_VECTOR (31 downto 0);
           DOUT : out  STD_LOGIC_VECTOR (31 downto 0) := X"00000000" );
end component;

begin

	IR_reg: REG32CE Port map(
							CLK => clk,
							CE => IRce,
							DIN => D_in(31 downto 0),
							DOUT => INST(31 downto 0));

	opcode <= INST(31 downto 26);
	Badr <= INST(20 downto 16);
	Cadr <= INST(20 downto 16);
	imm <= INST(15 downto 0);

end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:27:41 06/15/2020 
-- Design Name: 
-- Module Name:    DLX_IRenvi - Behavioral 
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

entity DLX_IRenvi is
    Port ( D_in : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           IRce : in  STD_LOGIC;
           IR_OUT : out  STD_LOGIC_VECTOR (31 downto 0);
           sext_imm : out  STD_LOGIC_VECTOR (31 downto 0));
end DLX_IRenvi;


architecture Behavioral of DLX_IRenvi is

signal INST : STD_LOGIC_VECTOR(31 downto 0);
component REG32CE is 
		Port ( CLK : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           DIN : in  STD_LOGIC_VECTOR (31 downto 0);
           DOUT : out  STD_LOGIC_VECTOR (31 downto 0) := X"00000000" );
end component;
signal imm : std_logic_vector(15 downto 0);

begin
IR_reg: REG32CE Port map(
							CLK => clk,
							CE => IRce,
							DIN => D_in(31 downto 0),
							DOUT => INST(31 downto 0));
							

imm <= INST(15 downto 0);
sext_imm <= std_logic_vector(resize(signed(imm), sext_imm'length)); -- resize the imm with sign extenstion.
IR_OUT <= INST;


end Behavioral;



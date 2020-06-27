----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:55:18 05/08/2020 
-- Design Name: 
-- Module Name:    REG5CE - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity REG5CE is
    Port ( DIN : in  STD_LOGIC_VECTOR (4 downto 0);
           clk : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           DOUT : out  STD_LOGIC_VECTOR (4 downto 0) :="00000");
end REG5CE;

architecture Behavioral of REG5CE is

begin
process(clk,CE)
begin
  if (clk'event and clk='1') then
      if CE = '1'            then DOUT <= DIN;
		                       
	   end if;
   end if;
 end process;


end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:23:19 05/22/2020 
-- Design Name: 
-- Module Name:    cnt16to32 - Behavioral 
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

entity cnt16to32 is
	Port ( cnt16_o : in std_logic_vector(15 downto 0);
           cnt32_o : out std_logic_vector(31 downto 0));
end cnt16to32;

architecture Behavioral of cnt16to32 is

begin

cnt32_o(31 downto 16) <= x"0000";
cnt32_o(15 downto 0) <= cnt16_o;

end Behavioral;


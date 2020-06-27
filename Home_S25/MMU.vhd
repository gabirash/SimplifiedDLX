----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:05:16 05/28/2020 
-- Design Name: 
-- Module Name:    MMU - Behavioral 
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

entity MMU is
    Port ( AO : in  STD_LOGIC_VECTOR (15 downto 0);
           MAO : out  STD_LOGIC_VECTOR (31 downto 0));
end MMU;

architecture Behavioral of MMU is

begin
 MAO(31 downto 16) <= x"0000";
 MAO(15 downto 0) <= AO(15 downto 0);

end Behavioral;


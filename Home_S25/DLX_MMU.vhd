----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:22:19 06/15/2020 
-- Design Name: 
-- Module Name:    DLX_MMU - Behavioral 
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

entity DLX_MMU is
    Port ( AO : in  STD_LOGIC_VECTOR (31 downto 0);
           MAO : out  STD_LOGIC_VECTOR (31 downto 0));
end DLX_MMU;

architecture Behavioral of DLX_MMU is

begin

MAO <= x"00" & AO(23 downto 0);


end Behavioral;


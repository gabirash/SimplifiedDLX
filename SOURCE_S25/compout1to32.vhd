----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:01:54 06/14/2020 
-- Design Name: 
-- Module Name:    compout1to32 - Behavioral 
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

entity compout1to32 is
    Port ( compsing : in  STD_LOGIC;
           compmulti : out  STD_LOGIC_VECTOR (31 downto 0));
end compout1to32;

architecture Behavioral of compout1to32 is

begin

compmulti(31 downto 4) <= x"0000000";
compmulti(3 downto 1) <= "000";
compmulti(0) <= compsing;

end Behavioral;

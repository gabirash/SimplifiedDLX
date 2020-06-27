----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:20:56 06/15/2020 
-- Design Name: 
-- Module Name:    InsParser - Behavioral 
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

entity InsParser is
    Port ( inst : in  STD_LOGIC_VECTOR (31 downto 0);
           Itype : in  STD_LOGIC;
           Jlink : in  STD_LOGIC;
           Aadr : out  STD_LOGIC_VECTOR (4 downto 0);
           Badr : out  STD_LOGIC_VECTOR (4 downto 0);
           Cadr : out  STD_LOGIC_VECTOR (4 downto 0);
			  ALUF : out  STD_LOGIC_VECTOR (2 downto 0));

end InsParser;

architecture Behavioral of InsParser is

begin

Aadr <= inst(25 downto 21);

Badr <= inst(20 downto 16);

Cadr <= inst(15 downto 11) when (Itype = '0' and Jlink = '0') else
		  inst(20 downto 16) when (Itype = '1' and Jlink = '0') else
		  "11111";
		  
ALUF <= inst(28 downto 26) when (Itype = '1') else inst(2 downto 0);
		  
end Behavioral;


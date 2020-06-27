----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:51:00 06/15/2020 
-- Design Name: 
-- Module Name:    SHIFTEnvi - Behavioral 
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

entity SHIFTEnvi is
    Port ( di : in  STD_LOGIC_VECTOR (31 downto 0);
           shift : in  STD_LOGIC;
           right : in  STD_LOGIC;
           do : out  STD_LOGIC_VECTOR (31 downto 0));
end SHIFTEnvi;

architecture Behavioral of SHIFTEnvi is

begin

do <= di when (shift='0') else
		(di(30 downto 0) & '0') when (right = '0' and shift = '1') else ('0' & di(31 downto 1));

end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:41:42 06/22/2020 
-- Design Name: 
-- Module Name:    DLXS2Consts - Behavioral 
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

entity DLXS2Consts is
    Port ( S22 : out  STD_LOGIC_VECTOR (31 downto 0);
           S23 : out  STD_LOGIC_VECTOR (31 downto 0));
end DLXS2Consts;

architecture Behavioral of DLXS2Consts is

begin

S22 <= x"00000000";
S23 <= x"00000001";

end Behavioral;


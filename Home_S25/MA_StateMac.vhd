----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:00:17 05/28/2020 
-- Design Name: 
-- Module Name:    MA_StateMac - Behavioral 
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

entity MA_StateMac is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           mw : in  STD_LOGIC;
           mr : in  STD_LOGIC;
           ack_n : in  STD_LOGIC;
           AS_N : out  STD_LOGIC;
           WR_N : out  STD_LOGIC;
           stop_n : out  STD_LOGIC;
           state_o : out  STD_LOGIC_VECTOR (1 downto 0);
           busy : out  STD_LOGIC);
end MA_StateMac;

architecture Behavioral of MA_StateMac is

signal state : std_logic_vector(1 downto 0);
signal req   : std_logic;

constant wait4req : STD_LOGIC_VECTOR(1 downto 0) := "00"; 
constant wait4ack : STD_LOGIC_VECTOR(1 downto 0) := "01";
constant next_s   : STD_LOGIC_VECTOR(1 downto 0) := "10";

begin

req <= mw OR mr;
 --Transition function
 process(clk,reset) begin
	if(reset = '1') then
		state <= wait4req;
	elsif ((clk'event) and (clk='1')) then
		case state is
			when wait4req =>
				if (req='0') then
					state <= wait4req;
				else
					state <= wait4ack;
				end if;
			when wait4ack =>
				if (ack_n='1') then
					state <= wait4ack;
				else
					state <= next_s;
				end if;
			when next_s =>
					state <= wait4req;
			when others => null;
		end case;
	end if;
	
end process;

-- Output function

AS_N <= not req;
WR_N <= not mw;
stop_n <= '0' when (state = wait4ack and ack_n = '1') else '1';
busy <= req and ack_n;
state_o <= state;

end Behavioral;


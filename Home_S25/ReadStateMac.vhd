----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:03:23 05/19/2020 
-- Design Name: 
-- Module Name:    ReadStateMac - Behavioral 
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

entity ReadStateMac is
	    Port ( step_en : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ACK_N : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           AS_N : out  STD_LOGIC;
           in_init : out  STD_LOGIC;
           WR_N_out : out  STD_LOGIC;
           stop_n : out  STD_LOGIC;
			  state_out : out  STD_LOGIC_VECTOR(1 downto 0));
end ReadStateMac;

architecture Behavioral of ReadStateMac is

signal state : std_logic_vector(1 downto 0);

constant wait4init : STD_LOGIC_VECTOR(1 downto 0) := "00"; 
constant fetch	    : STD_LOGIC_VECTOR(1 downto 0) := "01";
constant wait4ack  : STD_LOGIC_VECTOR(1 downto 0) := "10";
constant load : STD_LOGIC_VECTOR(1 downto 0) := "11";

begin

--Transition function 

process(clk,reset) begin
	if(reset = '1') then
		state <= wait4init;
	elsif ((clk'event) and (clk='1')) then
		case state is
			when wait4init =>
				if (step_en='0') then
					state <= wait4init;
				else
					state <= fetch;
				end if;
			when fetch =>
				state <= wait4ack;
			when wait4ack =>
				if (ACK_N='1') then
					state <= wait4ack;
				else
					state <= load;
				end if;
			when load =>
					state <= wait4init;
			when others => null;
		end case;
	end if;
	
end process;

-- Output function

AS_N <= '1' when (state=wait4init or state=load) else '0';
WR_N_out <= '1';
stop_n <= '0' when (state=wait4ack and ack_n = '1') else '1';
in_init <= '1' when state=wait4init else '0';
state_out <= state;

end Behavioral;


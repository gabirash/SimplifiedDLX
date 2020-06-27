----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:50:18 05/19/2020 
-- Design Name: 
-- Module Name:    WriteStateMac - Behavioral 
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

entity WriteStateMac is
    Port ( step_en : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           ACK_N : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           AS_N : out  STD_LOGIC:='1';
           in_init : out  STD_LOGIC;
           WR_N_out : out  STD_LOGIC:='1';
           stop_n : out  STD_LOGIC:='1';
			  state_out : out  STD_LOGIC_VECTOR(1 downto 0));
end WriteStateMac;

architecture Behavioral of WriteStateMac is

signal state : std_logic_vector(1 downto 0);

constant wait4init : STD_LOGIC_VECTOR(1 downto 0) := "00"; 
constant store	    : STD_LOGIC_VECTOR(1 downto 0) := "01";
constant wait4ack  : STD_LOGIC_VECTOR(1 downto 0) := "10";
constant terminate : STD_LOGIC_VECTOR(1 downto 0) := "11";

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
					state <= store;
				end if;
			when store =>
				state <= wait4ack;
			when wait4ack =>
				if (ACK_N='1') then
					state <= wait4ack;
				else
					state <= terminate;
				end if;
			when terminate =>
					state <= wait4init;
			when others => null;
		end case;
	end if;
	
end process;

-- Output function

AS_N <= '1' when (state=wait4init or state=terminate) else '0';
WR_N_out <= '1' when (state=wait4init or state=terminate) else '0';
stop_n <= '0' when (state=wait4ack and ACK_N='1') else '1';
in_init <= '1' when state=wait4init else '0';
state_out <= state;

end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:01:41 05/28/2020 
-- Design Name: 
-- Module Name:    Control_LS_stateMac - Behavioral 
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

entity Control_LS_stateMac is
    Port ( clk : in  STD_LOGIC;
			  step_en : in  STD_LOGIC;
           busy : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           opcode : in  STD_LOGIC_VECTOR (5 downto 0);
           mw : out  STD_LOGIC;
           mr : out  STD_LOGIC;
           IRce : out  STD_LOGIC;
           Cce : out  STD_LOGIC;
           PCce : out  STD_LOGIC;
           Bce : out  STD_LOGIC;
           GPR_WE : out  STD_LOGIC;
           AdmSelect : out  STD_LOGIC;
           in_init : out  STD_LOGIC;
			  state_o : out  STD_LOGIC_VECTOR (2 downto 0));
end Control_LS_stateMac;

architecture Behavioral of Control_LS_stateMac is

signal state : std_logic_vector(2 downto 0);

constant INIT : STD_LOGIC_VECTOR(2 downto 0) := "000"; 
constant FETCH	    : STD_LOGIC_VECTOR(2 downto 0) := "001";
constant DECODE  : STD_LOGIC_VECTOR(2 downto 0) := "010";
constant LOAD : STD_LOGIC_VECTOR(2 downto 0) := "011";
constant STORE : STD_LOGIC_VECTOR(2 downto 0) := "100"; 
constant HALT	    : STD_LOGIC_VECTOR(2 downto 0) := "101";
constant WBI  : STD_LOGIC_VECTOR(2 downto 0) := "110";

constant store_inst : STD_LOGIC_VECTOR(5 downto 0) := "101011"; 
constant load_inst  : STD_LOGIC_VECTOR(5 downto 0) := "100011";

begin

--Transition function 

process(clk,reset) begin
	if(reset = '1') then
		state <= INIT;
	elsif ((clk'event) and (clk='1')) then
		case state is
			when INIT =>
				if (step_en='0') then
					state <= INIT;
				else
					state <= FETCH;
				end if;
			when FETCH =>
				if (busy='1') then
					state <= FETCH;
				else
					state <= DECODE;
				end if;
			when DECODE =>
				if (opcode=load_inst) then
					state <= LOAD;
				elsif (opcode=store_inst) then
					state <= STORE;
				else
					state <= HALT;
				end if;
			when LOAD =>
				if (busy='1') then
					state <= LOAD;
				else
					state <= WBI;
				end if;
			when STORE =>
				if (busy='1') then
					state <= STORE;
				else
					state <= INIT;
				end if;
			when HALT =>
					state <= HALT;
			when WBI =>
					state <= INIT;
			when others => null;
		end case;
	end if;
	
end process;

-- Output function

mw <= '1' when (state=STORE) else '0';
mr <= '1' when (state=FETCH or state=LOAD) else '0';
IRce <= '1' when (state=FETCH) else '0';
Cce <= '1' when (state=LOAD) else '0';
PCce <= '1' when (state=DECODE) else '0';
Bce <= '1' when (state=DECODE) else '0';
GPR_WE <= '1' when (state=WBI) else '0';
AdmSelect <= '1' when (state=STORE or state=LOAD) else '0';
in_init <= '1' when (state=INIT or state=HALT) else '0';
state_o <= state;

end Behavioral;

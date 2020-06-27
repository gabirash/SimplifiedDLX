----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:41:58 06/15/2020 
-- Design Name: 
-- Module Name:    DLXCntrlState - Behavioral 
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

entity DLXCntrlState is
		Port ( clk : in  STD_LOGIC;
			  step_en : in  STD_LOGIC;
           busy : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  aeqz : in  STD_LOGIC;
           opcode : in  STD_LOGIC_VECTOR (5 downto 0);
			  func : in  STD_LOGIC_VECTOR (5 downto 0);
           mw : out  STD_LOGIC;
			  mr : out  STD_LOGIC;
           add : out  STD_LOGIC;
			  test : out  STD_LOGIC;
			  Itype : out  STD_LOGIC;
			  jlink : out  STD_LOGIC;
			  shift : out  STD_LOGIC;
			  right : out  STD_LOGIC;
			  S2sel : out STD_LOGIC_VECTOR (1 downto 0);
			  S1sel : out  STD_LOGIC_VECTOR (1 downto 0);
			  Asel : out  STD_LOGIC;
			  MDRsel : out  STD_LOGIC;
			  DINTsel : out  STD_LOGIC;
			  IRce : out  STD_LOGIC;
			  Ace : out  STD_LOGIC;
			  Bce : out  STD_LOGIC;
           Cce : out  STD_LOGIC;
           PCce : out  STD_LOGIC;
			  MARce : out  STD_LOGIC;
			  MDRce : out  STD_LOGIC;
           GPR_WE : out  STD_LOGIC;
           in_init : out  STD_LOGIC;
			  in_halt : out  STD_LOGIC;
			  state_o : out  STD_LOGIC_VECTOR (4 downto 0));
end DLXCntrlState;

architecture Behavioral of DLXCntrlState is

signal state : std_logic_vector(4 downto 0);

constant INIT : STD_LOGIC_VECTOR(4 downto 0) := "00000"; 
constant FETCH	    : STD_LOGIC_VECTOR(4 downto 0) := "00001";
constant DECODE  : STD_LOGIC_VECTOR(4 downto 0) := "00010";
constant ALU : STD_LOGIC_VECTOR(4 downto 0) := "00011";
constant TESTI : STD_LOGIC_VECTOR(4 downto 0) := "00100"; 
constant ALUI	    : STD_LOGIC_VECTOR(4 downto 0) := "00101";
constant SHIFTS  : STD_LOGIC_VECTOR(4 downto 0) := "00110";
constant ADRCOMP : STD_LOGIC_VECTOR(4 downto 0) := "00111"; 
constant LOAD	    : STD_LOGIC_VECTOR(4 downto 0) := "01000";
constant STORE  : STD_LOGIC_VECTOR(4 downto 0) := "01001";
constant COPYMDR2C : STD_LOGIC_VECTOR(4 downto 0) := "01010";
constant COPYGPR2MDR : STD_LOGIC_VECTOR(4 downto 0) := "01011"; 
constant WBR	    : STD_LOGIC_VECTOR(4 downto 0) := "01100";
constant WBI  : STD_LOGIC_VECTOR(4 downto 0) := "01101";
constant BRANCH	    : STD_LOGIC_VECTOR(4 downto 0) := "01110";
constant BTAKEN  : STD_LOGIC_VECTOR(4 downto 0) := "01111";
constant JR : STD_LOGIC_VECTOR(4 downto 0) := "10000";
constant SAVEPC : STD_LOGIC_VECTOR(4 downto 0) := "10001"; 
constant JALR	    : STD_LOGIC_VECTOR(4 downto 0) := "10010";
constant HALT	    : STD_LOGIC_VECTOR(4 downto 0) := "10011";

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
				if (opcode(5 downto 3)="110" and step_en='0') then
					state <= INIT;
				elsif (opcode(5 downto 3)="110" and step_en='1') then
					state <= FETCH;
				elsif (opcode(5 downto 2)="0000" and func(5)='1') then
					state <= ALU;
				elsif (opcode(5 downto 2)="0000" and func(5)='0') then
					state <= SHIFTS;
				elsif (opcode(5 downto 3)="001") then
					state <= ALUI;
				elsif (opcode(5 downto 3)="011") then
					state <= TESTI;
				elsif (opcode(5 downto 4)="10") then
					state <= ADRCOMP;
				elsif (opcode(5 downto 3)="010" and opcode(0)='0') then
					state <= JR;
				elsif (opcode(5 downto 3)="010" and opcode(0)='1') then
					state <= SAVEPC;
				elsif (opcode(5 downto 2)="0001") then
					state <= BRANCH;
				else 
					state <= HALT;
				end if;
			when BRANCH =>
				if ((aeqz xor opcode(0))='1') then
					state <= BTAKEN;
				elsif ((aeqz xor opcode(0))='0' and step_en='0') then
					state <= INIT;
				else
					state <= FETCH;
				end if;
			when BTAKEN =>
				if (step_en='0') then
					state <= INIT;
				else
					state <= FETCH;
				end if;
			when SAVEPC =>
				state <= JALR;
			when JALR =>
				if (step_en='0') then
					state <= INIT;
				else
					state <= FETCH;
				end if;
			when JR =>
				if (step_en='0') then
					state <= INIT;
				else
					state <= FETCH;
				end if;
			when ADRCOMP =>
				if (opcode(3)='1') then
					state <= COPYGPR2MDR;
				else
					state <= LOAD;
				end if;
			when COPYGPR2MDR =>
				state <= STORE;
			when LOAD =>
				if (busy='1') then
					state <= LOAD;
				else
					state <= COPYMDR2C;
				end if;
			when STORE =>
				if (busy='1') then
					state <= STORE;
					else
						state <= INIT;
				end if;
			when COPYMDR2C =>
				state <= WBI;
			when TESTI =>
				state <= WBI;
			when ALUI =>
				state <= WBI;
			when WBI =>
				if (step_en='0') then
					state <= INIT;
				else
					state <= FETCH;
				end if;
			when SHIFTS =>
				state <= WBR;
			when ALU =>
				state <= WBR;
			when WBR =>
				if (step_en='0') then
					state <= INIT;
				else
					state <= FETCH;
				end if;
			when HALT =>
				state <= HALT;	
			when others => null;
		end case;
	end if;
	
end process;

-- Output function

mr <= '1' when (state=FETCH or state=LOAD) else '0';
IRce <= '1' when (state=FETCH) else '0';
Ace <= '1' when (state=DECODE) else '0';
Bce <= '1' when (state=DECODE) else '0';
S2sel(1) <= '1' when (state=DECODE or state=COPYMDR2C or state=COPYGPR2MDR or state=JR or state=SAVEPC or state=JALR) else '0';
S2sel(0) <= '1' when (state=DECODE or state=TESTI or state=ALUI or state=ADRCOMP or state=BTAKEN) else '0';
PCce <= '1' when (state=DECODE or state=BTAKEN or state=JR or state=JALR) else '0';
add <= '1' when (state=DECODE or state=ALUI or state=ADRCOMP or state=BTAKEN or state=JR or state=SAVEPC or state=JALR) else '0';
S1sel(0) <= '1' when (state=ALU or state=TESTI or state=ALUI or state=SHIFTS or state=ADRCOMP or state=COPYMDR2C or state=JR or state=JALR) else '0';
Cce <= '1' when (state=ALU or state=TESTI or state=ALUI or state=SHIFTS or state=COPYMDR2C or state=SAVEPC) else '0';
test <= '1' when (state=TESTI) else '0';
Itype <= '1' when (state=TESTI or state=ALUI or state=WBI) else '0';
DINTsel <= '1' when (state=SHIFTS or state=COPYMDR2C or state=COPYGPR2MDR) else '0';
shift <= '1' when (state=SHIFTS) else '0';
right <= '1' when (state=SHIFTS and func(1)='1') else '0';
MARce <= '1' when (state=ADRCOMP) else '0';
MDRce <= '1' when (state=LOAD or state=COPYGPR2MDR) else '0';
MDRsel <= '1' when (state=LOAD) else '0';
Asel <= '1' when (state=LOAD or state=STORE) else '0';
mw <= '1' when (state=STORE) else '0';
S1sel(1) <= '1' when (state=COPYMDR2C or state=COPYGPR2MDR) else '0';
GPR_WE <= '1' when (state=WBR or state=WBI or state=JALR) else '0';
jlink <= '1' when (state=JALR) else '0';
in_init <= '1' when (state=INIT or state=HALT) else '0';
in_halt <= '1' when (state=HALT) else '0';

state_o <= state;

end Behavioral;


-- Vhdl test bench created from schematic C:\Users\gabon\Desktop\Home_S25\ReadMachine.sch - Fri May 22 14:49:33 2020
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY ReadMachine_ReadMachine_sch_tb IS
END ReadMachine_ReadMachine_sch_tb;
ARCHITECTURE behavioral OF ReadMachine_ReadMachine_sch_tb IS 

   COMPONENT ReadMachine
   PORT( step_en	:	IN	STD_LOGIC; 
          ack_n	:	IN	STD_LOGIC; 
          clk	:	IN	STD_LOGIC; 
          reset	:	IN	STD_LOGIC; 
          AS_N	:	OUT	STD_LOGIC; 
          in_init	:	OUT	STD_LOGIC; 
          WR_N	:	OUT	STD_LOGIC; 
          stop_n	:	OUT	STD_LOGIC; 
			 state	:	OUT	STD_LOGIC_VECTOR (1 DOWNTO 0);
          MAO	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          DIN	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          RDO	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0));
   END COMPONENT;

   SIGNAL step_en	:	STD_LOGIC;
   SIGNAL ack_n	:	STD_LOGIC;
   SIGNAL clk	:	STD_LOGIC;
   SIGNAL reset	:	STD_LOGIC;
   SIGNAL AS_N	:	STD_LOGIC;
   SIGNAL in_init	:	STD_LOGIC;
   SIGNAL WR_N	:	STD_LOGIC;
   SIGNAL stop_n	:	STD_LOGIC;
	SIGNAL state	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL MAO	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL DIN	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL RDO	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
	
	--Constant that will be used in the test bench
	constant clk_period : time := 200 ns;

BEGIN

   UUT: ReadMachine PORT MAP(
		step_en => step_en, 
		ack_n => ack_n, 
		clk => clk, 
		reset => reset, 
		AS_N => AS_N, 
		in_init => in_init, 
		WR_N => WR_N, 
		stop_n => stop_n,
		state => state,
		MAO => MAO, 
		DIN => DIN, 
		RDO => RDO
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		step_en <= '0';
		ack_n <= '1';
		reset <= '1';
		DIN <= x"BE0F01CE";
		wait for 202 ns;
		reset <= '0';
		wait for 2*clk_period;
		-- 1st cycle (full cycle)
		step_en <= '1';
		wait for clk_period;
		step_en <= '0';
		wait for 5*clk_period;
		ack_n <= '0';
		wait for clk_period;
		ack_n <= '1';
		DIN <= x"00C2BEEF";
		wait for 3*clk_period;
		-- 2nd cycle (reset in in the middle of a cycle)
		step_en <= '1';
		wait for clk_period;
		step_en <= '0';
		wait for 5*clk_period;
		ack_n <= '0';
		reset <= '1';
		wait for clk_period;
		ack_n <= '1';
		DIN <= x"00C2BEEE";
		reset <= '0';
      WAIT; -- will wait forever
   END PROCESS;
	
	clk_process: process begin
		clk <= '1';
		wait for 100 ns;
		clk <= '0';
		wait for 100 ns;
	end process;
-- *** End Test Bench - User Defined Section ***

END;

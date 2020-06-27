-- Vhdl test bench created from schematic C:\ACSL_projects\Home_S25\Monitor.sch - Mon May 11 11:16:06 2020
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
ENTITY Monitor_Monitor_sch_tb IS
END Monitor_Monitor_sch_tb;
ARCHITECTURE behavioral OF Monitor_Monitor_sch_tb IS 

   COMPONENT Monitor
   PORT( clk	:	IN	STD_LOGIC; 
          AI	:	IN	STD_LOGIC_VECTOR (9 DOWNTO 0); 
          CARDSEL	:	IN	STD_LOGIC; 
          WR_N	:	IN	STD_LOGIC; 
          C	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          Monitored	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          D	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          stop_n	:	IN	STD_LOGIC; 
          SDO	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          reg_addr	:	OUT	STD_LOGIC_VECTOR (4 DOWNTO 0); 
          SACK_N	:	OUT	STD_LOGIC; 
          step_en	:	IN	STD_LOGIC; 
          in_init	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC;
   SIGNAL AI	:	STD_LOGIC_VECTOR (9 DOWNTO 0);
   SIGNAL CARDSEL	:	STD_LOGIC;
   SIGNAL WR_N	:	STD_LOGIC;
   SIGNAL C	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL Monitored	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL D	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL stop_n	:	STD_LOGIC;
   SIGNAL SDO	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL reg_addr	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
   SIGNAL SACK_N	:	STD_LOGIC;
   SIGNAL step_en	:	STD_LOGIC;
   SIGNAL in_init	:	STD_LOGIC;
	
	--Constant that will be used in the test bench
	constant clk_period : time := 200 ns;
	constant AI_A : STD_LOGIC_VECTOR (9 DOWNTO 0):= "0110000000";-- 0x180
	constant AI_B : STD_LOGIC_VECTOR (9 DOWNTO 0):= "0110100000";-- 0x1A0
	constant AI_C : STD_LOGIC_VECTOR (9 DOWNTO 0):= "0111000000";-- 0x1C0
	constant AI_D : STD_LOGIC_VECTOR (9 DOWNTO 0):= "0111100000";-- 0x1E0
	

BEGIN

   UUT: Monitor PORT MAP(
		clk => clk, 
		AI => AI, 
		CARDSEL => CARDSEL, 
		WR_N => WR_N, 
		C => C, 
		Monitored => Monitored, 
		D => D, 
		stop_n => stop_n, 
		SDO => SDO, 
		reg_addr => reg_addr, 
		SACK_N => SACK_N, 
		step_en => step_en, 
		in_init => in_init
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
		variable I: INTEGER;
   BEGIN
		C <= x"FFFFFF00";
		D <= x"FFFFF000";
		CARDSEL <= '0';
		WR_N <= '1';
		AI <= AI_A;--now it is 0x180
		Monitored <= x"F0000000";
		in_init <= '1';
		step_en <= '0';
		stop_n <= '1';
		wait for 202 ns;
		step_en <= '1';
		wait for clk_period;
		in_init <= '0';
		step_en <= '0';
		wait for 5*clk_period;
		stop_n <= '0';
		wait for 3*clk_period;
		stop_n <= '1';
		wait for 8*clk_period;
		in_init <= '1';
		
		
		
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

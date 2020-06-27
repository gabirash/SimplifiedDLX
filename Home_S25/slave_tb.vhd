-- Vhdl test bench created from schematic C:\ACSL_projects\Home_S25\Monitor_slave.sch - Mon Apr 27 13:34:56 2020
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
ENTITY Monitor_slave_Monitor_slave_sch_tb IS
END Monitor_slave_Monitor_slave_sch_tb;
ARCHITECTURE behavioral OF Monitor_slave_Monitor_slave_sch_tb IS 

   COMPONENT Monitor_slave
   PORT( clk	:	IN	STD_LOGIC; 
          AI	:	IN	STD_LOGIC_VECTOR (9 DOWNTO 0); 
          CARDSEL	:	IN	STD_LOGIC; 
          WR_N	:	IN	STD_LOGIC; 
          A	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          B	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          C	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          D	:	IN	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          SDO	:	OUT	STD_LOGIC_VECTOR (31 DOWNTO 0); 
          SACK_N	:	OUT	STD_LOGIC; 
          reg_addr	:	OUT	STD_LOGIC_VECTOR (4 DOWNTO 0));
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC;
   SIGNAL AI	:	STD_LOGIC_VECTOR (9 DOWNTO 0);
   SIGNAL CARDSEL	:	STD_LOGIC;
   SIGNAL WR_N	:	STD_LOGIC;
   SIGNAL A	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL B	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL C	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL D	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL SDO	:	STD_LOGIC_VECTOR (31 DOWNTO 0);
   SIGNAL SACK_N	:	STD_LOGIC;
   SIGNAL reg_addr	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	
	-- Clock period definitions
   constant clk_period : time := 200 ns;
	constant AI_A : STD_LOGIC_VECTOR (9 DOWNTO 0):= "0110000000";-- 0x180
	constant AI_B : STD_LOGIC_VECTOR (9 DOWNTO 0):= "0110100000";-- 0x1A0
	constant AI_C : STD_LOGIC_VECTOR (9 DOWNTO 0):= "0111000000";-- 0x1C0
	constant AI_D : STD_LOGIC_VECTOR (9 DOWNTO 0):= "0111100000";-- 0x1E0

BEGIN

   UUT: Monitor_slave PORT MAP(
		clk => clk, 
		AI => AI, 
		CARDSEL => CARDSEL, 
		WR_N => WR_N, 
		A => A, 
		B => B, 
		C => C, 
		D => D, 
		SDO => SDO, 
		SACK_N => SACK_N, 
		reg_addr => reg_addr
   );

-- *** Test Bench - User Defined Section ***

	
   tb : PROCESS
   BEGIN
		-- initialization
		A <= x"FFFFFFFF";
		B <= x"FFFFFFF0";
		C <= x"FFFFFF00";
		D <= x"FFFFF000";
		CARDSEL <= '0';
		WR_N <= '1';
		AI <= AI_A;--now it is 0x180
		wait for 202 ns;
		
		-- Test for read with AI = 0x180 with read transaction of the master
		CARDSEL <= '1';
		wait for clk_period*3;
		CARDSEL <= '0';
		wait for 5*clk_period;
		
		-- Test for read with AI = 0x1A0 with read transaction of the master
		AI <= AI_B;
		CARDSEL <= '1';
		wait for clk_period*3;
		CARDSEL <= '0';
		wait for 5*clk_period;
		
		-- Test for read with AI = 0x1C0 with read transaction of the master
		AI <= AI_C;
		CARDSEL <= '1';
		wait for clk_period*3;
		CARDSEL <= '0';
		wait for 5*clk_period;
		
		-- Test for read with AI = 0x1E0 with read transaction of the master
		AI <= AI_D;
		CARDSEL <= '1';
		wait for clk_period*3;
		CARDSEL <= '0';
		wait for 5*clk_period;
		
		-- Test for read with AI = 0x1C0 with write transaction of the MASTER
		AI <= AI_C;
		CARDSEL <= '1';
		WR_N <= '0';
		wait for clk_period*3;
		CARDSEL <= '0';
		WR_N <= '1';
		wait for 5*clk_period;
		
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

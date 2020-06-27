-- Vhdl test bench created from schematic C:\Users\oz\Desktop\Home_S25\Control_LS_top.sch - Tue Jun 02 10:02:00 2020
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
ENTITY Control_LS_top_Control_LS_top_sch_tb IS
END Control_LS_top_Control_LS_top_sch_tb;
ARCHITECTURE behavioral OF Control_LS_top_Control_LS_top_sch_tb IS 

   COMPONENT Control_LS_top
   PORT( clk	:	IN	STD_LOGIC; 
          reset	:	IN	STD_LOGIC; 
          step_en	:	IN	STD_LOGIC; 
          ack_n	:	IN	STD_LOGIC; 
          in_init	:	OUT	STD_LOGIC; 
          stateLS	:	OUT	STD_LOGIC_VECTOR (2 DOWNTO 0); 
          AS_N	:	OUT	STD_LOGIC; 
          WR_N	:	OUT	STD_LOGIC; 
          stop_n	:	OUT	STD_LOGIC; 
          stateMAC	:	OUT	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          IRce	:	OUT	STD_LOGIC; 
          Cce	:	OUT	STD_LOGIC; 
          Bce	:	OUT	STD_LOGIC; 
          PCce	:	OUT	STD_LOGIC; 
          GPR_we	:	OUT	STD_LOGIC; 
          AdmSelect	:	OUT	STD_LOGIC; 
          mr	:	OUT	STD_LOGIC; 
          busy	:	OUT	STD_LOGIC; 
          mw	:	OUT	STD_LOGIC; 
          opcode	:	IN	STD_LOGIC_VECTOR (5 DOWNTO 0));
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC;
   SIGNAL reset	:	STD_LOGIC;
   SIGNAL step_en	:	STD_LOGIC;
   SIGNAL ack_n	:	STD_LOGIC;
   SIGNAL in_init	:	STD_LOGIC;
   SIGNAL stateLS	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
   SIGNAL AS_N	:	STD_LOGIC;
   SIGNAL WR_N	:	STD_LOGIC;
   SIGNAL stop_n	:	STD_LOGIC;
   SIGNAL stateMAC	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL IRce	:	STD_LOGIC;
   SIGNAL Cce	:	STD_LOGIC;
   SIGNAL Bce	:	STD_LOGIC;
   SIGNAL PCce	:	STD_LOGIC;
   SIGNAL GPR_we	:	STD_LOGIC;
   SIGNAL AdmSelect	:	STD_LOGIC;
   SIGNAL mr	:	STD_LOGIC;
   SIGNAL busy	:	STD_LOGIC;
   SIGNAL mw	:	STD_LOGIC;
   SIGNAL opcode	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
	
	--Constant that will be used in the test bench
	constant clk_period : time := 200 ns;


BEGIN

   UUT: Control_LS_top PORT MAP(
		clk => clk, 
		reset => reset, 
		step_en => step_en, 
		ack_n => ack_n, 
		in_init => in_init, 
		stateLS => stateLS, 
		AS_N => AS_N, 
		WR_N => WR_N, 
		stop_n => stop_n, 
		stateMAC => stateMAC, 
		IRce => IRce, 
		Cce => Cce, 
		Bce => Bce, 
		PCce => PCce, 
		GPR_we => GPR_we, 
		AdmSelect => AdmSelect, 
		mr => mr, 
		busy => busy, 
		mw => mw, 
		opcode => opcode
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
--		step_en <= '0';
--		ack_n <= '1';
--		reset <= '1';
--		opcode <= "000000";
--		wait for 202 ns;
--		reset <= '0';
--		step_en <= '1';
--		wait for clk_period;
--		step_en <= '0';
--		wait for 2*clk_period;
--		ack_n <= '0';
--		wait for clk_period;
--		ack_n <= '1';
--		opcode <= "101011";
--		wait for 4*clk_period;
--		ack_n <= '0';
--		wait for clk_period;
--		ack_n <= '1';
		
		step_en <= '0';
		ack_n <= '1';
		reset <= '1';
		opcode <= "000000";
		wait for 202 ns;
		reset <= '0';
		step_en <= '1';
		wait for clk_period;
		step_en <= '0';
		wait for 2*clk_period;
		ack_n <= '0';
		wait for clk_period;
		ack_n <= '1';
		opcode <= "000000";
		wait for 4*clk_period;
		reset <= '1';
		wait for clk_period;
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

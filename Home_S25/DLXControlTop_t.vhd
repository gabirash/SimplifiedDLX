-- Vhdl test bench created from schematic C:\Users\gabon\Desktop\updated\Home_S25\DLXControlTop.sch - Mon Jun 22 11:38:14 2020
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
ENTITY DLXControlTop_DLXControlTop_sch_tb IS
END DLXControlTop_DLXControlTop_sch_tb;
ARCHITECTURE behavioral OF DLXControlTop_DLXControlTop_sch_tb IS 

   COMPONENT DLXControlTop
   PORT( clk	:	IN	STD_LOGIC; 
          reset	:	IN	STD_LOGIC; 
          step_en	:	IN	STD_LOGIC; 
          ack_n	:	IN	STD_LOGIC; 
          aeqz	:	IN	STD_LOGIC; 
          opcode	:	IN	STD_LOGIC_VECTOR (5 DOWNTO 0); 
          func	:	IN	STD_LOGIC_VECTOR (5 DOWNTO 0); 
          mw	:	OUT	STD_LOGIC; 
          WR_N	:	OUT	STD_LOGIC; 
          MACState	:	OUT	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          mr	:	OUT	STD_LOGIC; 
          add	:	OUT	STD_LOGIC; 
          test	:	OUT	STD_LOGIC; 
          Itype	:	OUT	STD_LOGIC; 
          jlink	:	OUT	STD_LOGIC; 
          right	:	OUT	STD_LOGIC; 
          Asel	:	OUT	STD_LOGIC; 
          MDRsel	:	OUT	STD_LOGIC; 
          DINTsel	:	OUT	STD_LOGIC; 
          IRce	:	OUT	STD_LOGIC; 
          Ace	:	OUT	STD_LOGIC; 
          Bce	:	OUT	STD_LOGIC; 
          Cce	:	OUT	STD_LOGIC; 
          PCce	:	OUT	STD_LOGIC; 
          MARce	:	OUT	STD_LOGIC; 
          MDRce	:	OUT	STD_LOGIC; 
          GPR_WE	:	OUT	STD_LOGIC; 
          in_init	:	OUT	STD_LOGIC; 
          in_halt	:	OUT	STD_LOGIC; 
          DLXState	:	OUT	STD_LOGIC_VECTOR (4 DOWNTO 0); 
          AS_N	:	OUT	STD_LOGIC; 
          stop_n	:	OUT	STD_LOGIC; 
          shift	:	OUT	STD_LOGIC; 
          S2sel	:	OUT	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          S1sel	:	OUT	STD_LOGIC_VECTOR (1 DOWNTO 0));
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC;
   SIGNAL reset	:	STD_LOGIC;
   SIGNAL step_en	:	STD_LOGIC;
   SIGNAL ack_n	:	STD_LOGIC;
   SIGNAL aeqz	:	STD_LOGIC;
   SIGNAL opcode	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
   SIGNAL func	:	STD_LOGIC_VECTOR (5 DOWNTO 0);
   SIGNAL mw	:	STD_LOGIC;
   SIGNAL WR_N	:	STD_LOGIC;
   SIGNAL MACState	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL mr	:	STD_LOGIC;
   SIGNAL add	:	STD_LOGIC;
   SIGNAL test	:	STD_LOGIC;
   SIGNAL Itype	:	STD_LOGIC;
   SIGNAL jlink	:	STD_LOGIC;
   SIGNAL right	:	STD_LOGIC;
   SIGNAL Asel	:	STD_LOGIC;
   SIGNAL MDRsel	:	STD_LOGIC;
   SIGNAL DINTsel	:	STD_LOGIC;
   SIGNAL IRce	:	STD_LOGIC;
   SIGNAL Ace	:	STD_LOGIC;
   SIGNAL Bce	:	STD_LOGIC;
   SIGNAL Cce	:	STD_LOGIC;
   SIGNAL PCce	:	STD_LOGIC;
   SIGNAL MARce	:	STD_LOGIC;
   SIGNAL MDRce	:	STD_LOGIC;
   SIGNAL GPR_WE	:	STD_LOGIC;
   SIGNAL in_init	:	STD_LOGIC;
   SIGNAL in_halt	:	STD_LOGIC;
   SIGNAL DLXState	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
   SIGNAL AS_N	:	STD_LOGIC;
   SIGNAL stop_n	:	STD_LOGIC;
   SIGNAL shift	:	STD_LOGIC;
   SIGNAL S2sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL S1sel	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	
	--Constant that will be used in the test bench
	constant clk_period : time := 200 ns;

BEGIN

   UUT: DLXControlTop PORT MAP(
		clk => clk, 
		reset => reset, 
		step_en => step_en, 
		ack_n => ack_n, 
		aeqz => aeqz, 
		opcode => opcode, 
		func => func, 
		mw => mw, 
		WR_N => WR_N, 
		MACState => MACState, 
		mr => mr, 
		add => add, 
		test => test, 
		Itype => Itype, 
		jlink => jlink, 
		right => right, 
		Asel => Asel, 
		MDRsel => MDRsel, 
		DINTsel => DINTsel, 
		IRce => IRce, 
		Ace => Ace, 
		Bce => Bce, 
		Cce => Cce, 
		PCce => PCce, 
		MARce => MARce, 
		MDRce => MDRce, 
		GPR_WE => GPR_WE, 
		in_init => in_init, 
		in_halt => in_halt, 
		DLXState => DLXState, 
		AS_N => AS_N, 
		stop_n => stop_n, 
		shift => shift, 
		S2sel => S2sel, 
		S1sel => S1sel
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		
		-- ALU
		step_en <= '0';
		ack_n <= '1';
		reset <= '1';
		aeqz <= '0';
		opcode <= "000000";
		func <= "000000";
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
		func <= "100000";
		
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

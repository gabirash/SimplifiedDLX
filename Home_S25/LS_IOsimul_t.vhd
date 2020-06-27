-- Vhdl test bench created from schematic E:\adlx\C2\Home_S25\LS_ioSimul.sch - Tue Jun 02 11:12:53 2020
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
ENTITY LS_ioSimul_LS_ioSimul_sch_tb IS
END LS_ioSimul_LS_ioSimul_sch_tb;
ARCHITECTURE behavioral OF LS_ioSimul_LS_ioSimul_sch_tb IS 

   COMPONENT LS_ioSimul
   PORT( clk_in	:	IN	STD_LOGIC; 
          RST	:	IN	STD_LOGIC; 
          pc_step_en	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL clk_in	:	STD_LOGIC;
   SIGNAL RST	:	STD_LOGIC;
   SIGNAL pc_step_en	:	STD_LOGIC;

	--Constant that will be used in the test bench
	constant clk_period : time := 200 ns;
	
BEGIN

   UUT: LS_ioSimul PORT MAP(
		clk_in => clk_in, 
		RST => RST, 
		pc_step_en => pc_step_en
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		RST <= '1';
		pc_step_en <= '1';
		wait for 202 ns;
		RST <= '0';
--		wait for 100*clk_period;
--		RST <= '1';
--		wait for clk_period;
--		RST <= '0';
      WAIT; -- will wait forever
   END PROCESS;
	
	clk_process: process begin
		clk_in <= '1';
		wait for 100 ns;
		clk_in <= '0';
		wait for 100 ns;
	end process;
-- *** End Test Bench - User Defined Section ***

END;

-- Vhdl test bench created from schematic C:\Users\gabon\Desktop\updated\Home_S25\DLX_ioSimul.sch - Tue Jun 23 11:51:09 2020
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
ENTITY DLX_ioSimul_DLX_ioSimul_sch_tb IS
END DLX_ioSimul_DLX_ioSimul_sch_tb;
ARCHITECTURE behavioral OF DLX_ioSimul_DLX_ioSimul_sch_tb IS 

   COMPONENT DLX_ioSimul
   PORT( CLK_in	:	IN	STD_LOGIC; 
          RST	:	IN	STD_LOGIC; 
          PC_step_en	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL CLK_in	:	STD_LOGIC;
   SIGNAL RST	:	STD_LOGIC;
   SIGNAL PC_step_en	:	STD_LOGIC;
	
	--Constant that will be used in the test bench
	constant clk_period : time := 200 ns;

BEGIN

   UUT: DLX_ioSimul PORT MAP(
		CLK_in => CLK_in, 
		RST => RST, 
		PC_step_en => PC_step_en
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
		RST <= '1';
		pc_step_en <= '1';
		wait for 202 ns;
		RST <= '0';
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

library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Package for SRAM pre-initialization data
package sram_data is

	-- Size of pre instantiated data
	constant data_size: integer := 23;
	
	type pre_inst_data is array(0 to data_size-1) of std_logic_vector(31 downto 0);
	constant pre_inst_mem : pre_inst_data := ( 
	-- The actual data :
							X"C3FF0000",  -- 0x00000000 	            	       special-nop
							X"141F0010",  -- 0x00000001 	            	       bnez R0 er0
							X"101F0002",  -- 0x00000002 	            	       beqz R0 L1
							X"2C01000A",  -- 0x00000003 	er1        	  addi R1 R0 0xa
							X"FFFF0000",  -- 0x00000004 	            	       halt
							X"8C020015",  -- 0x00000005 	L1         	   lw R2 R0 d4
							X"5C5F0000",  -- 0x00000006 	            	       jalr R2
							X"585F000F",  -- 0x00000007 	            	       jr R2
							X"2C010003",  -- 0x00000008 	er2        	  addi R1 R0 0x3
							X"FFFF0000",  -- 0x00000009 	            	       halt
							X"8C020016",  -- 0x0000000A 	L2         	   lw R2 R0 d5
							X"5BFF0000",  -- 0x0000000B 	            	       jr R31
							X"AC1F0014",  -- 0x0000000C 	L3         	   sw R31 R0 d3
							X"68030000",  -- 0x0000000D 	            	       seqi R3 R0 0x0
							X"2C050005",  -- 0x0000000E 	            	       addi R5 R0 0x5
							X"00BF3000",  -- 0x0000000F 	            	       slli R6 R5
							X"00A33823",  -- 0x00000010 	            	       add R7 R5 R3
							X"FFFFD0D4",  -- 0x00000011 	            	       halt
							X"2C1E000F",  -- 0x00000012 	er0        	  addi R30 R0 0xf
							X"FFFF0001",  -- 0x00000013 	            	       halt
							X"00000000",  -- 0x00000014 	d3         	 dc 0x0
							X"0000000A",  -- 0x00000015 	d4         	   dc L2
							X"0000000C"  -- 0x00000016 	d5         	   dc L3
							-- Number of converted lines is : 23
							 ); 

end sram_data;

package body sram_data is

 
end sram_data;

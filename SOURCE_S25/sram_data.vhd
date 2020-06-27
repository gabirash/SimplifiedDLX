library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Package for SRAM pre-initialization data
package sram_data is

	-- Size of pre instantiated data
	constant data_size: integer := 27;
	
	type pre_inst_data is array(0 to data_size-1) of std_logic_vector(31 downto 0);
	constant pre_inst_mem : pre_inst_data := ( 
												X"C3FF314C",  -- 0x00000000 	            	       special-nop
												X"141F0012",  -- 0x00000001 	            	       bnez R0 er0
												X"101F0002",  -- 0x00000002 	            	       beqz R0 L1
												X"2C01000A",  -- 0x00000003 	er1        	  addi R1 R0 0xa
												X"FFFF0000",  -- 0x00000004 	            	       halt
												 
												--------------------------------------------------------
												 
												X"8C020017",  -- 0x00000005 	L1         	   lw R2 R0 d4
												X"5C5F0000",  -- 0x00000006 	            	       jalr R2
												X"585F8F64",  -- 0x00000007 	            	       jr R2
												X"2C010003",  -- 0x00000008 	er2        	  addi R1 R0 0x3
												X"FFFF0000",  -- 0x00000009 	            	       halt
												 
												--------------------------------------------------------
												 
												X"8C020018",  -- 0x0000000A 	L2         	   lw R2 R0 d5
												X"5BFF0000",  -- 0x0000000B 	            	       jr R31
												X"AC1F0016",  -- 0x0000000C 	L3         	   sw R31 R0 d3
												X"68030000",  -- 0x0000000D 	            	       seqi R3 R0 0x0
												X"2C050005",  -- 0x0000000E 	            	       addi R5 R0 0x5
												X"00BF3000",  -- 0x0000000F 	            	       slli R6 R5
												X"00A33823",  -- 0x00000010 	            	       add R7 R5 R3
												X"AC070019",  -- 0x00000011 	            	       sw R7 R0 d6
												X"AC05001A",  -- 0x00000012 	            	       sw R5 R0 d7
												X"FFFF0000",  -- 0x00000013 	            	       halt
												 
												--------------------------------------------------------
												 
												X"2C1E000F",  -- 0x00000014 	er0        	  addi R30 R0 0xf
												X"FFFF0000",  -- 0x00000015 	            	       halt
												 
												--------------------------------------------------------
												 
												X"00000000",  -- 0x00000016 	d3         	 dc 0x0
												X"0000000A",  -- 0x00000017 	d4         	   dc L2
												X"0000000C",  -- 0x00000018 	d5         	   dc L3
												X"00000000",  -- 0x00000019 	d6         	 dc 0x0
												X"00000000"   -- 0x0000001A 	d7         	 dc 0x0

												-- Number of converted lines is : 27

							 ); 

end sram_data;

package body sram_data is

 
end sram_data;

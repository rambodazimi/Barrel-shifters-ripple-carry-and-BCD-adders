-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "02/04/2022 16:13:26"
                                                            
-- Vhdl Test Bench template for design  :  rambod_azimi_barrel_shifter_behavioral
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;                               

ENTITY rambod_azimi_barrel_shifter_behavioral_vhd_tst IS
END rambod_azimi_barrel_shifter_behavioral_vhd_tst;
ARCHITECTURE rambod_azimi_barrel_shifter_behavioral_arch OF rambod_azimi_barrel_shifter_behavioral_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL X : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT rambod_azimi_barrel_shifter_behavioral
	PORT (
	sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	X : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : rambod_azimi_barrel_shifter_behavioral
	PORT MAP (
-- list connections between master ports and signals
	sel => sel,
	X => X,
	Y => Y
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
for i in 0 to 16 loop
X <= std_logic_vector(to_unsigned(i,4));
for j in 0 to 4 loop
sel <= std_logic_vector(to_unsigned(j,2));
wait for 10 ns;
end loop;
end loop; 
WAIT;                                                        
END PROCESS always;                                          
END rambod_azimi_barrel_shifter_behavioral_arch;

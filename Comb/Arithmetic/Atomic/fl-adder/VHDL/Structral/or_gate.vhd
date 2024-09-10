library IEEE;
use IEEE.std_logic_1164.all;

entity or_gate is 
	
	port ( I1 , I2 : IN std_logic; 
	     O : OUT std_logic);

end or_gate;
architecture dataflow of or_gate is

begin
	
	O <= I1 OR I2;

end dataflow;

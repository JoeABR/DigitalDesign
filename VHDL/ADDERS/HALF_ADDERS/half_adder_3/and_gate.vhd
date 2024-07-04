library IEEE;
use IEEE.std_logic_1164.all;

entity and_gate is 
	port ( I1 , I2 : IN std_logic;
	     O : OUT std_logic);
end and_gate;

architecture dataflow of and_gate is
begin 
	O <= I1 AND I2;
end dataflow;

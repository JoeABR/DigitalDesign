library IEEE;
use IEEE.std_logic_1164.all;

entity xor_gate is
	port ( I1 , I2 : IN std_logic;
	     O : OUT std_logic);
end xor_gate;

architecture dataflow of xor_gate is 
begin
	O <= I1 XOR I2;
end dataflow;

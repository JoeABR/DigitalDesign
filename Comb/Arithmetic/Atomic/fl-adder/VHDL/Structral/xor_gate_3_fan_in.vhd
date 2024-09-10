library IEEE;
use IEEE.std_logic_1164.all;

entity xor_gate_3_fan_in is

	port ( I1 , I2 , I3 : IN std_logic; 
	     O : OUT std_logic);

end xor_gate_3_fan_in;

architecture dataflow of xor_gate_3_fan_in is

begin

	O <= I1 xor I2 xor I3;

end dataflow;

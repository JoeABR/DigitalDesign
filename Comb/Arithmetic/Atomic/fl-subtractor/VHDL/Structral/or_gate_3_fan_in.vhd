library IEEE;
use IEEE.std_logic_1164.all;

entity or_gate_3_fan_in is
	port ( I1 , I2 , I3 : IN std_logic;
	       O : OUT std_logic);
end or_gate_3_fan_in;

architecture dataflow of or_gate_3_fan_in is

begin

	O <= I1 or I2 or I3;
	
end dataflow;

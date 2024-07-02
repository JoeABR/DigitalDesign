library IEEE;
use IEEE.std_logic_1164.all;

entity half_adder is 
	port (augend , addend : IN bit;
	     sum , carry_out : OUT bit);
end half_adder;

architecture dataflow of half_adder is 
begin
	sum <= augend xor addend;
	carry_out <= augend and addend;
end dataflow;

-------------------------------------------------------
--! @file
--! @brief full adder implementation using dataflow modeling
--! @author Joe Abraham
-------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder is 
	
	port ( augend , addend , carry_in : IN std_logic;
	sum , carry_out : OUT std_logic);

end full_adder;

architecture dataflow of full_adder is

begin 
	sum <= augend xor addend xor carry_in;

	carry_out <= (augend and addend) or (augend and carry_in) or (addend and carry_in);
end dataflow;

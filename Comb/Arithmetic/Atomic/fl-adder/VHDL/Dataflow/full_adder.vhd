-------------------------------------------------------
--! @file
--! @brief full adder implementation using dataflow modeling
--! @author Joe Abraham
-------------------------------------------------------

--! Standard IEEE Import
library IEEE;
--! Importing Standard Logic elements
use IEEE.std_logic_1164.all;

--! Description of the entity with conventional naming
entity full_adder is 
	
	port ( 
		augend :IN std_logic; --! the current value
		addend :IN std_logic; --! the value added to current
		carry_in : IN std_logic; --! the carry in from previous addition if present
		sum : OUT std_logic; --! the sum of the addition
		carry_out : OUT std_logic --! the carry out from the addition if generated
	);

end full_adder;

--! Description of the architecture used
architecture dataflow of full_adder is

--! Core implementation of the architecture
begin 

	sum <= augend xor addend xor carry_in; --! Sum signal as implemented by a boolean expression
	carry_out <= (augend and addend) or (augend and carry_in) or (addend and carry_in); --! Carry-out signal as implemented by a boolean expression

end dataflow;
--! End of the implementation
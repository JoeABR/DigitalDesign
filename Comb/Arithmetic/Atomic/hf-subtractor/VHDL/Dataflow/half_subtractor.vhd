library IEEE;
use IEEE.std_logic_1164.all;

entity half_subtractor is

	port ( minuend , subtrahend : IN std_logic;
	      diff , borrow_out : OUT std_logic);

end half_subtractor;

architecture dataflow of half_subtractor is

begin
	diff <= minuend xor subtrahend;
	borrow_out <= not minuend and subtrahend;

end dataflow;

library IEEE;
use IEEE.std_logic_1164.all;

entity full_subtractor is

	port ( minuend , subtrahend , borrow_in : IN std_logic;
	       diff , borrow_out : OUT std_logic);

end full_subtractor;

architecture dataflow of full_subtractor is

begin
	diff <= minuend xor subtrahend xor borrow_in;

	borrow_out <= ((not minuend) and subtrahend) or ((not minuend) and borrow_in) or ( subtrahend and borrow_in );

end dataflow;

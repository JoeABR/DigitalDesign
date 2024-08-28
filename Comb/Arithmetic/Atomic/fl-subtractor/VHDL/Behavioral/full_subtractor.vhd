library IEEE;
use IEEE.std_logic_1164.all;

entity full_subtractor is
	port ( minuend , subtrahend , borrow_in : IN std_logic;
	       diff , borrow_out : OUT std_logic);
end full_subtractor;

architecture behavior of full_subtractor is

begin
	full_subtraction : process ( minuend, subtrahend , borrow_in )

	begin
		if minuend THEN

			diff <= not ( subtrahend xor borrow_in );
			borrow_out <= ( subtrahend and borrow_in );

		else
			diff <= ( subtrahend xor borrow_in );
			borrow_out <= (subtrahend or borrow_in );

		end if;

	end process full_subtraction;

end behavior;		

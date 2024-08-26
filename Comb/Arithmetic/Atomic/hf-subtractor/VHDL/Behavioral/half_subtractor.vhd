library IEEE;
use IEEE.std_logic_1164.all;


entity half_subtractor is

	port ( minuend , subtrahend : IN std_logic;
	       diff , borrow_out : OUT std_logic);

end half_subtractor;

architecture behavior of half_subtractor is

begin
	half_subtraction : process (minuend , subtrahend)

	begin
		if minuend THEN

			diff <= not subtrahend;
			borrow_out <= '0';

		else
			diff <= subtrahend;
			borrow_out <= subtrahend;
		end if;

	end process half_subtraction;
end behavior;

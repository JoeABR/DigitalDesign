library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder is

	port ( augend , addend , carry_in : IN std_logic;
	     sum , carry_out : OUT std_logic);

end full_adder;

architecture behavior of full_adder is
begin
	full_addition : process ( augend , addend , carry_in )
	begin
		if augend xor addend THEN

			sum <= not carry_in;

			carry_out <= carry_in;

		else 
			sum <= carry_in;
			if augend and addend THEN

				carry_out <= '1';
			else 
				
				carry_out <= '0';

			end if;

		end if;
	end process full_addition;
end behavior;

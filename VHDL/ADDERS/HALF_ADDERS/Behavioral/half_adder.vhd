library IEEE;
use IEEE.std_logic_1164.all;

entity half_adder is 
	port (
	augend , addend : IN bit;
	sum , carry_out : OUT bit);

end half_adder;

architecture behavior of half_adder is
begin
	half_addition : process (augend , addend) 
	begin
		if augend = '1' THEN

			sum <= not addend;
			carry_out <= addend;

		else
			sum <= addend;
			carry_out <= '0';
		end if;
	end process half_addition;
end behavior;

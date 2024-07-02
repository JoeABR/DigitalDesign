library IEEE;
use IEEE.std_logic_1164.all;

entity half_adder is
	port (augend , addend : IN bit;
	sum , carry_out : OUT bit);

end half_adder;

architecture structral of half_adder is

	component xor_gate
		port ( I1 , I2 : IN bit;
		       O : OUT bit);
	end component;

	component and_gate
		port ( I1 , I2 : IN bit;
		       O : OUT bit);
	end component;
	

	for XOR_GATE_0 : xor_gate use entity work.xor_gate;
	
	for AND_GATE_0 : and_gate use entity work.and_gate;
begin
	XOR_GATE_0 : xor_gate port map (I1 => augend , 
				      I2 => addend , 
				      O => sum);
	AND_GATE_0 : and_gate port map (I1 => augend , 
				      I2 => addend , 
				      O => carry_out);

end structral;

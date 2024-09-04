library IEEE;

use IEEE.std_logic_1164.all;

entity half_subtractor is 

	port ( minuend , subtrahend : IN std_logic;
	     diff , borrow_out : OUT std_logic);

end half_subtractor;

architecture structral of half_subtractor is

	component xor_gate
		port ( I1 , I2 : IN std_logic;
		      O : OUT std_logic);
	end component;

	component and_gate
		port ( I1 , I2 : IN std_logic;
		       O : OUT std_logic);
	end component;

	component not_gate 
		port (I : IN std_logic;
		     O : OUT std_logic);
	end component;

	signal minuend_bar : std_logic;

	for XOR_GATE_0 : xor_gate use entity work.xor_gate;
	
	for AND_GATE_0 : and_gate use entity work.and_gate;

	for NOT_GATE_0 : not_gate use entity work.not_gate;

begin
	XOR_GATE_0 : xor_gate port map ( I1 => minuend ,
				         I2 => subtrahend ,
				 	 O => diff);

	NOT_GATE_0 : not_gate port map ( I => minuend ,
				         O => minuend_bar);

	AND_GATE_0 : and_gate port map ( I1 => minuend_bar ,
				         I2 => subtrahend ,
				 	 O => borrow_out);

end structral;

library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder is

	port ( augend , addend , carry_in : IN std_logic; 
	     sum , carry_out : OUT std_logic);

end full_adder;

architecture structral of full_adder is

	component xor_gate_3_fan_in 

		port ( I1 , I2 , I3 : IN std_logic; 
		     O : OUT std_logic);

	end component;

	component and_gate
		port ( I1 , I2 : IN std_logic;
		     O : OUT std_logic);
	end component;

	component or_gate 
		port ( I1 , I2 : IN std_logic; 
		     O : OUT std_logic);
	end component;
	--internal wire signals
	signal w0_and_add_aug, w1_or_add_aug, w2_and_w1_carry_in : std_logic;

	for XOR_GATE : xor_gate_3_fan_in use entity work.xor_gate_3_fan_in;
	for OR_GATE_0 : or_gate use entity work.or_gate;

	for OR_GATE_1 : or_gate use entity work.or_gate;

	for AND_GATE_0 : and_gate use entity work.and_gate;

	for AND_GATE_1 : and_gate use entity work.and_gate;

begin
	XOR_GATE : xor_gate_3_fan_in port map ( I1 => augend ,
					      	I2 => addend ,
						I3 => carry_in ,
						O => sum);

	AND_GATE_0 : and_gate port map ( I1 => augend ,
				         I2 => addend ,
				 	 O => w0_and_add_aug);

	AND_GATE_1 : and_gate port map ( I1 => w1_or_add_aug ,
				       	 I2 => carry_in ,
				 	 O => w2_and_w1_carry_in);

	OR_GATE_0 : or_gate port map ( I1 => augend , 
				       I2 => addend ,
				       O => w1_or_add_aug);

	OR_GATE_1 : or_gate port map ( I1 => w0_and_add_aug , 
				       I2 => w2_and_w1_carry_in , 
			       	       O => carry_out);

end structral;

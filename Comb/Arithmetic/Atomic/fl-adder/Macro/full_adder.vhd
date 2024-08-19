library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder is 

	port ( augend , addend , carry_in : IN std_logic;
	     sum , carry_out : OUT std_logic);

end full_adder;

architecture structral of full_adder is
	component or_gate 
		port ( I1 , I2 : IN std_logic;
		       O : OUT std_logic);
	end component;

	component half_adder
		port ( augend , addend : IN std_logic;
		       sum , carry_out : OUT std_logic);
	end component;

	signal HF_ADD_0_SUM , HF_ADD_0_CARRY , HF_ADD_1_CARRY : std_logic;

	for OR_GATE_0 : or_gate use entity work.or_gate;

	for HALF_ADDER_0 : half_adder use entity work.half_adder;

	for HALF_ADDER_1 : half_adder use entity work.half_adder;
		
begin

	HALF_ADDER_0 : half_adder port map ( augend => augend,
					   addend => addend,
				   sum => HF_ADD_0_SUM,
			   carry_out => HF_ADD_0_CARRY);

	HALF_ADDER_1 : half_adder port map (augend => HF_ADD_0_SUM,
					   addend => carry_in,
				   sum => sum,
			   carry_out => HF_ADD_1_CARRY);
	OR_GATE_0 : or_gate port map (I1 => HF_ADD_0_CARRY,
				     I2 => HF_ADD_1_CARRY,
			     O=>carry_out);
end structral;

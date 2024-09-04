library IEEE;
use IEEE.std_logic_1164.all;

entity full_subtractor is 
	
	port ( minuend , subtrahend , borrow_in : IN std_logic;
	       diff , borrow_out : OUT std_logic);

end full_subtractor;

architecture structral of full_subtractor is

	component or_gate 
		port ( I1 , I2 : IN std_logic;
		       O : OUT std_logic);
	end component;

	component half_subtractor 
		port ( minuend , subtrahend : IN std_logic;
		       diff , borrow_out : OUT std_logic);
	end component;

	signal HF_SUB_0_DIFF , HF_SUB_0_BORROW , HF_SUB_1_BORROW : std_logic;

	for OR_GATE_0 : or_gate use entity work.or_gate;
	
	for HALF_SUBTRACTOR_0 : half_subtractor use entity work.half_subtractor;
	
	for HALF_SUBTRACTOR_1 : half_subtractor use entity work.half_subtractor;

	
begin

	HALF_SUBTRACTOR_0 : half_subtractor port map ( minuend => minuend ,
						       subtrahend => subtrahend ,
					       	       diff => HF_SUB_0_DIFF ,
					       	       borrow_out => HF_SUB_0_BORROW );
	
	HALF_SUBTRACTOR_1 : half_subtractor port map ( minuend => HF_SUB_0_DIFF ,
						       subtrahend => borrow_in ,
					       	       diff => diff ,
					       	       borrow_out => HF_SUB_1_BORROW );

	OR_GATE_0 : or_gate port map ( I1 => HF_SUB_0_BORROW , 
				       I2 => HF_SUB_1_BORROW ,
			       	       O => borrow_out);

end structral;

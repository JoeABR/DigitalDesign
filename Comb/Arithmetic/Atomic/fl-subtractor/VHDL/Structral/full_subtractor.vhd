library IEEE;
use IEEE.std_logic_1164.all;

entity full_subtractor is
	port ( minuend , subtrahend , borrow_in : IN std_logic;
	       diff , borrow_out : OUT std_logic );
end full_subtractor;

architecture structral of full_subtractor is 

	component xor_gate_3_fan_in 
		port ( I1 , I2 , I3 : IN std_logic ;
		       O : OUT std_logic);
	end component;

	component and_gate
		port ( I1 , I2 : IN std_logic ;
		       O : OUT std_logic );
	end component;

	component or_gate
		port ( I1 , I2 : IN std_logic ;
		       O : OUT std_logic );
	end component;

	component not_gate 
		port (I : IN std_logic;
		      O : OUT std_logic);
	end component;

	--internal signal declaration

	signal w0_not_minuend , w1_or_borrow_in_subtrahend , w2_and_borrow_in_subtrahend , w3_and_w1_w0 : std_logic;


	for XOR_GATE_0 : xor_gate_3_fan_in use entity work.xor_gate_3_fan_in;

	for NOT_GATE_0 : not_gate use entity work.not_gate;
	
	for AND_GATE_0 : and_gate use entity work.and_gate;

	for AND_GATE_1 : and_gate use entity work.and_gate;

	for OR_GATE_0 : or_gate use entity work.or_gate;

	for OR_GATE_1 : or_gate use entity work.or_gate;

begin
	XOR_GATE_0 : xor_gate_3_fan_in port map ( I1 => minuend ,
					        I2 => subtrahend ,
						I3 => borrow_in ,
						O => diff);

	NOT_GATE_0 : not_gate port map ( I => minuend ,
				       O => w0_not_minuend );


	OR_GATE_0 : or_gate port map ( I1 => borrow_in ,
				       I2 => subtrahend ,
			     	       O => w1_or_borrow_in_subtrahend );

	AND_GATE_0 : and_gate port map ( I1 => borrow_in ,
				         I2 => subtrahend , 
			       	         O => w2_and_borrow_in_subtrahend );

	AND_GATE_1 : and_gate port map ( I1 => w1_or_borrow_in_subtrahend ,
				         I2 => w0_not_minuend ,
				 	 O => w3_and_w1_w0 );
	
	OR_GATE_1 : or_gate port map ( I1 => w2_and_borrow_in_subtrahend ,
				       I2 => w3_and_w1_w0 , 
			       	       O => borrow_out );

end structral;


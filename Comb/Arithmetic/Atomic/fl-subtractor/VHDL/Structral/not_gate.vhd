library IEEE;
use IEEE.std_logic_1164.all;

entity not_gate is

	port (I : IN std_logic;
		O : OUT std_logic);

end not_gate;

architecture dataflow of not_gate is
begin

	O <= not I;

end dataflow;

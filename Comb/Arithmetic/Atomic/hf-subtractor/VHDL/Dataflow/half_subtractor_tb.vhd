library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity half_subtractor_tb is
	end half_subtractor_tb;

architecture simulation of half_subtractor_tb is

	component half_subtractor 
		port ( minuend , subtrahend : IN std_logic;
		     	diff , borrow_out : OUT std_logic);
	end component;

	for half_subtractor_0 : half_subtractor use entity work.half_subtractor;

	signal minuend , subtrahend , diff , borrow_out : std_logic;

	begin 
		half_subtractor_0 : half_subtractor port map ( minuend => minuend , subtrahend => subtrahend , diff => diff , borrow_out => borrow_out);
		simulate : process

		type pattern_type is record 
			minuend , subtrahend : std_logic;
			diff , borrow_out : std_logic;

		end record;

		type pattern_array is array (natural range <>) of pattern_type;
		constant patterns : pattern_array :=
		(('0','0','0','0'),
		 ('0','1','1','1'),
	 	 ('1','1','0','0'),
	 	 ('1','0','1','0'));
		begin
			for index in patterns'range loop
				minuend <= patterns(index).minuend;
				subtrahend <= patterns(index).subtrahend;
				wait for 1 ns;
				assert diff = patterns(index).diff
				report "diff value error" severity error;
				assert borrow_out = patterns(index).borrow_out
				report "borrow out value error" severity error;
			end loop;
			assert false report "end of test" severity note;
			wait;
	end process simulate;
end simulation;

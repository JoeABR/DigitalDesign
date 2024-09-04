library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity full_subtractor_tb is
	end full_subtractor_tb;

architecture simulation of full_subtractor_tb is

	component full_subtractor 
		port ( minuend , subtrahend , borrow_in : IN std_logic;
		     	diff , borrow_out : OUT std_logic);
	end component;

	for full_subtractor_0 : full_subtractor use entity work.full_subtractor;

	signal minuend , subtrahend , borrow_in , diff , borrow_out : std_logic;

	begin 
		full_subtractor_0 : full_subtractor port map ( minuend => minuend , subtrahend => subtrahend , borrow_in => borrow_in ,diff => diff , borrow_out => borrow_out);
		simulate : process

		type pattern_type is record 
			minuend , subtrahend , borrow_in : std_logic;
			diff , borrow_out : std_logic;

		end record;

		type pattern_array is array (natural range <>) of pattern_type;
		constant patterns : pattern_array :=
		(('0','0','0','0','0'),
		 ('0','0','1','1','1'),
	 	 ('0','1','0','1','1'),
	 	 ('0','1','1','0','1'),
	 	 ('1','0','0','1','0'),
	 	 ('1','0','1','0','0'),
	 	 ('1','1','0','0','0'),
	 	 ('1','1','1','1','1'));
		begin
			for index in patterns'range loop
				minuend <= patterns(index).minuend;
				subtrahend <= patterns(index).subtrahend;
				borrow_in <= patterns(index).borrow_in;

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

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity full_adder_tb is
	end full_adder_tb;


architecture sim of full_adder_tb is

	component full_adder
		port (augend , addend , carry_in : IN std_logic;
		     sum , carry_out : OUT std_logic);

	end component;

	for full_adder_0 : full_adder use entity work.full_adder;

		signal augend , addend , carry_in , sum , carry_out : std_logic;
	begin
		full_adder_0 : full_adder port map ( augend => augend , addend => addend , carry_in => carry_in , sum => sum , carry_out => carry_out);
	
	simulate : process

	type pattern_type is record
		augend, addend, carry_in : std_logic;
		sum, carry_out : std_logic;

	end record;

	type pattern_array is array (natural range <>) of pattern_type;

	constant patterns : pattern_array :=
	(('0', '0', '0', '0', '0'),
	('0', '0', '1', '1', '0'),
	('0', '1', '0', '1', '0'),
	('0', '1', '1', '0', '1'),
	('1', '0', '0', '1', '0'),
	('1', '0', '1', '0', '1'),
	('1', '1', '0', '0', '1'),
	('1', '1', '1', '1', '1'));

	begin 
		for index in patterns'range loop
			
			augend <= patterns(index).augend;
			addend <= patterns(index).addend;
			carry_in <= patterns(index).carry_in;

			wait for 1 ns;

			assert sum = patterns(index).sum
			report "bad sum value" severity error;

			assert carry_out = patterns(index).carry_out
			report "bad carry_out value" severity error;

		end loop;
		assert false report "end of test proc" severity note;

		wait;

	end process simulate;
end sim;						     

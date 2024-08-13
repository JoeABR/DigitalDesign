library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity half_adder_tb is
	end half_adder_tb;

architecture behavior of half_adder_tb is
	component half_adder 
		port (augend , addend : IN std_logic;
		     sum , carry_out : OUT std_logic);
	end component;

	for half_adder_0 : half_adder use entity work.half_adder;

		signal augend , addend , sum , carry_out : std_logic;

	begin
		half_adder_0 : half_adder port map (augend => augend , addend => addend , sum => sum , carry_out => carry_out );
		process
		type pattern_type is record 
			augend , addend : std_logic;
			sum , carry_out : std_logic;

		end record;

		type pattern_array is array (natural range <>) of pattern_type;
		constant patterns : pattern_array := 
		(('0','0','0','0'),
		 ('1','0','1','0'),
		 ('1','1','0','1'),
		 ('0','1','1','0'));
		begin
			for index in patterns'range loop
				augend <= patterns(index).augend;
				addend <= patterns(index).addend;
				wait for 1 ns;
				assert sum = patterns(index).sum
				report "sum value error" severity error;
				assert carry_out = patterns(index).carry_out 
				report "carry out value error" severity error;
			end loop;
			assert false report "end of test" severity note;
			wait;
		end process;
	end behavior;

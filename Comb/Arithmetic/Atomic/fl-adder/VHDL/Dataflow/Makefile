#Compiler specific
COMPILER := ghdl
FLAGS := "--std=08"


all:
	@$(COMPILER) -a $(FLAGS) full_adder.vhd full_adder_tb.vhd
	@$(COMPILER) -e $(FLAGS) full_adder_tb
	@$(COMPILER) -r $(FLAGS) full_adder_tb --wave=wave.ghw --stop-time=1us

.PHONY : all
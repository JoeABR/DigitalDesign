GHDL=ghdl

FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) half_adder.vhd half_adder_tb.vhd
	@$(GHDL) -e $(FLAGS) half_adder_tb
	@$(GHDL) -r $(FLAGS) half_adder_tb --wave=wave.ghw --stop-time=1us

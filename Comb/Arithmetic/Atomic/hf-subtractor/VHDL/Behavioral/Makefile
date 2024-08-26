GHDL=ghdl

FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) half_subtractor.vhd half_subtractor_tb.vhd
	@$(GHDL) -e $(FLAGS) half_subtractor_tb
	@$(GHDL) -r $(FLAGS) half_subtractor_tb --wave=wave.ghw --stop-time=1us

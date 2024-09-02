GHDL=ghdl

FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) full_subtractor.vhd full_subtractor_tb.vhd
	@$(GHDL) -e $(FLAGS) full_subtractor_tb
	@$(GHDL) -r $(FLAGS) full_subtractor_tb --wave=wave.ghw --stop-time=1us

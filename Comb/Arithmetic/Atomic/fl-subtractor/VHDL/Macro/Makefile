GHDL=ghdl

FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) xor_gate.vhd and_gate.vhd not_gate.vhd or_gate.vhd half_subtractor.vhd full_subtractor.vhd full_subtractor_tb.vhd
	@$(GHDL) -e $(FLAGS) full_subtractor_tb
	@$(GHDL) -r $(FLAGS) full_subtractor_tb --wave=wave.ghw --stop-time=1us

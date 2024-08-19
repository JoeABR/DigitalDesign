
GHDL=ghdl

FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) and_gate.vhd xor_gate.vhd or_gate.vhd half_adder.vhd full_adder.vhd full_adder_tb.vhd
	@$(GHDL) -e $(FLAGS) full_adder_tb
	@$(GHDL) -r $(FLAGS) full_adder_tb --wave=wave.ghw --stop-time=1us

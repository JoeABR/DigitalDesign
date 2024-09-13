VER=verilator
FLAGS=--binary --assert --timing --trace
DIR=OUT
EXE=out
TOP=full_adder_tb
OUTPUTS=--sc --cc
VIEW=gtkwave
WV=wave.vcd

all:
	@$(VER) -E full_adder_tb.sv full_adder.sv
	@$(VER) $(FLAGS) full_adder_tb.sv full_adder.sv --top $(TOP) --Mdir $(DIR) -o $(EXE)
	@./$(DIR)/$(EXE)
	@$(VIEW) $(WV)

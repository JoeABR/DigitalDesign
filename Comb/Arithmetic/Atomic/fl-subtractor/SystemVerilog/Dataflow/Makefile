VER=verilator
FLAGS=--binary --assert --timing --trace
DIR=OUT
EXE=out
TOP=full_subtractor_tb
OUTPUTS=--sc --cc
VIEW=gtkwave
WV=wave.vcd

all:
	@$(VER) -E full_subtractor_tb.sv full_subtractor.sv
	@$(VER) $(FLAGS) full_subtractor_tb.sv full_subtractor.sv --top $(TOP) --Mdir $(DIR) -o $(EXE)
	@./$(DIR)/$(EXE)
	@$(VIEW) $(WV)

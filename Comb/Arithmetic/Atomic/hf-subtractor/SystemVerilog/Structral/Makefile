VER=verilator
FLAGS=--binary --assert --timing --trace
DIR=OUT
EXE=out
TOP=half_subtractor_tb
OUTPUTS=--sc --cc
all:
	@$(VER) -E half_subtractor_tb.sv half_subtractor.sv
	@$(VER) $(FLAGS) half_subtractor_tb.sv half_subtractor.sv --top $(TOP) --Mdir $(DIR) -o $(EXE)

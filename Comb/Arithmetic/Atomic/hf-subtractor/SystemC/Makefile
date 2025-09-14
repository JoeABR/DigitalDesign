COMPILER=g++
FLAGS=-std=c++98
BUILD_DIR=build
OUT=$(BUILD_DIR)/main
FILES=main.cc half_subtractor.cc half_subtractor_tb.cc
LOC1=-I.
LINKLOC=-L.
SYSCSFIL=-I$$SYSTEMC_HOME/include
SYSCHARCH=-L$$SYSTEMC_HOME/lib-linux64
LIBS=-lsystemc -lm
PATHING=-Wl,-rpath=$$SYSTEMC_HOME/lib-linux64
EXE=$(BUILD_DIR)/main


.PHONY : all clean build
all:
	@$(COMPILER) $(FLAGS) $(LOC1) $(SYSCSFIL) $(LINKLOC) $(SYSCHARCH) $(PATHING) -o $(OUT) $(FILES) $(LIBS)

build : 
	mkdir -p $(BUILD_DIR)

clean:
	@rm -f $(EXE) *.vcd 

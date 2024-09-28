COMPILER=g++
FLAGS=-std=c++98

OUT=-o main
FILES=main.cc half_adder.cc half_adder_tb.cc
LOC1=-I.
LINKLOC=-L.
SYSCSFIL=-I$$SYSTEMC_HOME/include
SYSCHARCH=-L$$SYSTEMC_HOME/lib-linux64
LIBS=-lsystemc -lm
PATHING=-Wl,-rpath=$$SYSTEMC_HOME/lib-linux64
EXE=main

all:
	@$(COMPILER) $(FLAGS) $(LOC1) $(SYSCSFIL) $(LINKLOC) $(SYSCHARCH) $(PATHING) $(OUT) $(FILES) $(LIBS)

clean:
	@rm -f $(EXE) *.vcd

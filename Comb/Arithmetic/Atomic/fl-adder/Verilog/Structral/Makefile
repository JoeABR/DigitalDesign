Icarus=iverilog
TARGET=out
FLAGS="-g2005"

all:
	@$(Icarus) $(FLAGS) -E full_adder.v full_adder_tb.v
	@$(Icarus) $(FLAGS) -s full_adder_tb -o $(TARGET) full_adder_tb.v full_adder.v
	@./$(TARGET)

Icarus=iverilog
TARGET=out
FLAGS="-g2005"

all:
	@$(Icarus) $(FLAGS) -E full_subtractor.v full_subtractor_tb.v
	@$(Icarus) $(FLAGS) -s full_subtractor_tb -o $(TARGET) full_subtractor_tb.v full_subtractor.v
	@./$(TARGET)

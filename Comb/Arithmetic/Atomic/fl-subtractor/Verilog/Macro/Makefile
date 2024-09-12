Icarus=iverilog
TARGET=out
FLAGS="-g2005"

all:
	@$(Icarus) $(FLAGS) -E full_subtractor.v full_subtractor_tb.v half_subtractor.v
	@$(Icarus) $(FLAGS) -s full_subtractor_tb -o $(TARGET) full_subtractor_tb.v full_subtractor.v half_subtractor.v
	@./$(TARGET)

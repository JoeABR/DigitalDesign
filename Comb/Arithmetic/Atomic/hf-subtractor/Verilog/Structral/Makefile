Icarus=iverilog
TARGET=out
FLAGS="-g2005"

all:
	@$(Icarus) $(FLAGS) -E half_subtractor.v half_subtractor_tb.v
	@$(Icarus) $(FLAGS) -s half_subtractor_tb -o $(TARGET) half_subtractor_tb.v half_subtractor.v
	@./$(TARGET)

`timescale 1ns/1ns
module half_subtractor_tb;

reg minuend, subtrahend;
wire diff, borrow_out;


reg [0:3] pattern [0:3];
integer i;

half_subtractor half_subtractor_0 (.minuend(minuend),
			 	   .subtrahend(subtrahend),
		 	 	   .diff(diff),
		 	 	   .borrow_out(borrow_out));

		 initial begin
			 {pattern[0], pattern[1], pattern[2], pattern[3]} = {4'b0000, 4'b0111, 4'b1100, 4'b1010 };

			 $dumpfile("wave.vcd");
			 $dumpvars(0, half_subtractor_tb);
		 end
		 initial begin
			 for (i = 0; i < 4; i=i+1) begin
				 {minuend, subtrahend} <= {pattern[i][0], pattern[i][1]};
				 #1;
				 if (diff != pattern[i][2])
					 $error("diff value error");
				 if (borrow_out != pattern[i][3])
					 $error("borrow out value error");
			 end
			 $display("end of test");
			 $finish;
		 end
		
endmodule

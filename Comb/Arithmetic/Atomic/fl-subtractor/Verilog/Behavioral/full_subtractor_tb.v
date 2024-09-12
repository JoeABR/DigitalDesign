`timescale 1ns/1ns
module full_subtractor_tb;

reg minuend, subtrahend, borrow_in;
wire diff, borrow_out;


reg [0:4] pattern [0:7];
integer i;

full_subtractor full_subtractor_0 (.minuend(minuend),
			 	   .subtrahend(subtrahend),
			 	   .borrow_in(borrow_in),
		 	 	   .diff(diff),
		 	 	   .borrow_out(borrow_out));

		 initial begin
			 {pattern[0], pattern[1], pattern[2], pattern[3],
		          pattern[4], pattern[5], pattern[6], pattern[7]} = {5'b00000, 5'b00111, 5'b01011, 5'b01101,
			  						     5'b10010, 5'b10100, 5'b11000, 5'b11111};
								     

			 $dumpfile("wave.vcd");
			 $dumpvars(0, full_subtractor_tb);
		 end
		 initial begin
			 for (i = 0; i < 8; i=i+1) begin
				 {minuend, subtrahend, borrow_in} <= {pattern[i][0], pattern[i][1], pattern[i][2]};
				 #1;
				 if (diff != pattern[i][3])
					 $error("diff value error");
				 if (borrow_out != pattern[i][4])
					 $error("borrow out value error");
			 end
			 $display("end of test");
			 $finish;
		 end
endmodule

`timescale 1ns/1ns
module full_adder_tb;

reg augend, addend, carry_in;
wire sum, carry_out;


reg [0:4] pattern [0:7];
integer i;

full_adder full_adder_0 (.augend(augend),
			 .addend(addend),
			 .carry_in(carry_in),
		 	 .sum(sum),
		 	 .carry_out(carry_out));

		 initial begin
			 {pattern[0], pattern[1], pattern[2], pattern[3],
		          pattern[4], pattern[5], pattern[6], pattern[7]} = {5'b00000, 5'b00110, 5'b01010, 5'b01101,
			  						     5'b10010, 5'b10101, 5'b11001, 5'b11111};
								     

			 $dumpfile("wave.vcd");
			 $dumpvars(0, full_adder_tb);
		 end
		 initial begin
			 for (i = 0; i < 8; i=i+1) begin
				 {augend, addend, carry_in} <= {pattern[i][0], pattern[i][1], pattern[i][2]};
				 #1;
				 if (sum != pattern[i][3])
					 $error("sum value error");
				 if (carry_out != pattern[i][4])
					 $error("carry out value error");
			 end
			 $display("end of test");
			 $finish;
		 end
endmodule

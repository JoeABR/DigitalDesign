`timescale 1ns/1ns
module half_adder_tb;

reg augend, addend;
wire sum, carry_out;


reg [0:3] pattern [0:3];
integer i;

half_adder half_adder_0 (.augend(augend),
			 .addend(addend),
		 	 .sum(sum),
		 	 .carry_out(carry_out));

		 initial begin
			 {pattern[0], pattern[1], pattern[2], pattern[3]} = {4'b0000, 4'b1010, 4'b1101, 4'b0110 };

			 $dumpfile("wave.vcd");
			 $dumpvars(0, half_adder_tb);
		 end
		 initial begin
			 for (i = 0; i < 4; i=i+1) begin
				 {augend, addend} <= {pattern[i][0], pattern[i][1]};
				 #1;
				 if (sum != pattern[i][2])
					 $error("sum value error");
				 if (carry_out != pattern[i][3])
					 $error("carry out value error");
			 end
			 $display("end of test");
			 $finish;
		 end
		
endmodule

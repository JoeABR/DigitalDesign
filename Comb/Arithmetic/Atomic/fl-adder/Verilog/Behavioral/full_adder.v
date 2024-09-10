module full_adder (input augend,
		   input addend,
		   input carry_in,
		   output reg sum,
		   output reg carry_out);
	   
	   always @ (augend, addend, carry_in) begin

		   if (augend ^ addend) begin
			   sum = !carry_in;
			   carry_out = carry_in;
		   end
		   else begin
			   sum = carry_in;
			   if (augend & addend)
				   carry_out = 1'b1;
			   else
				   carry_out = 1'b0;
		   end
	   end

endmodule

module full_adder (input logic augend, 
		   input logic addend,
		   input logic carry_in,
		   output wire sum,
		   output wire carry_out);
	timeunit 1ns;

	always_comb begin : full_addition

		if (augend ^ addend) 
		begin
			sum = !carry_in;
			carry_out = carry_in;
		end
		else
		begin
			sum = carry_in;
			carry_out = (augend & addend)? 1'b1: 1'b0;
		end
	end : full_addition
endmodule : full_adder

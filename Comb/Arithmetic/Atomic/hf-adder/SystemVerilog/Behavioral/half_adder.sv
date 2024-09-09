module half_adder (input logic augend, 
		   input logic addend, 
		   output wire sum,
		   output wire carry_out);
	timeunit 1ns;

	always_comb begin : half_addition

		if (augend) 
		begin
			sum = !addend;
			carry_out = addend;
		end
		else
		begin
			sum = addend;
			carry_out = 1'b0;
		end
	end : half_addition
endmodule : half_adder

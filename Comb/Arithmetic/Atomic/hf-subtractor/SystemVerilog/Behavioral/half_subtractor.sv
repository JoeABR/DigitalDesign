module half_subtractor (input logic minuend, 
		   	input logic subtrahend, 
		   	output wire diff,
		   	output wire borrow_out);
	timeunit 1ns;

	always_comb begin : half_subtraction

		if (minuend) 
		begin
			diff = !subtrahend;
			borrow_out = 1'b0;
		end
		else
		begin
			diff = subtrahend;
			borrow_out = subtrahend;
		end
	end : half_subtraction
endmodule : half_subtractor

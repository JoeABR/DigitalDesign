module full_subtractor (input logic minuend, 
		   	input logic subtrahend,
		   	input logic borrow_in,
		   	output wire diff,
		   	output wire borrow_out);
	timeunit 1ns;

	always_comb begin : full_subtraction

		if (minuend) 
		begin
			diff = !(subtrahend ^ borrow_in);
			borrow_out = (subtrahend & borrow_in);
		end
		else
		begin
			diff = (subtrahend ^ borrow_in);
			borrow_out = (subtrahend | borrow_in);
		end
	end : full_subtraction
endmodule : full_subtractor

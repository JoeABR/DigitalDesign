module half_subtractor (input logic minuend, 
		   	input logic subtrahend, 
		   	output wire diff,
		   	output wire borrow_out);
	timeunit 1ns;

	assign diff = minuend ^ subtrahend;
	
	assign borrow_out = ~minuend & subtrahend;

endmodule : half_subtractor

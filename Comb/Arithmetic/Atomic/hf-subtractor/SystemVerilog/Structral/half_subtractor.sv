module half_subtractor (input logic minuend, 
		   	input logic subtrahend, 
		   	output wire diff,
		   	output wire borrow_out);

	wire minuend_bar;
	
	timeunit 1ns;

	not(minuend_bar, minuend);
	xor(diff, minuend, subtrahend);
	and(borrow_out, minuend_bar, subtrahend);

endmodule : half_subtractor

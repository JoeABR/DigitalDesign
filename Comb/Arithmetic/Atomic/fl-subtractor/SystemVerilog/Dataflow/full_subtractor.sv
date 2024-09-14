module full_subtractor (input logic minuend,
			input logic subtrahend,
			input logic borrow_in,
			output wire diff,
			output wire borrow_out);
		
		timeunit 1ns;

		assign diff = minuend ^ subtrahend ^ borrow_in;
		
		assign borrow_out = ((!minuend) & subtrahend) | (subtrahend & borrow_in) | (borrow_in & (!minuend));

endmodule :  full_subtractor

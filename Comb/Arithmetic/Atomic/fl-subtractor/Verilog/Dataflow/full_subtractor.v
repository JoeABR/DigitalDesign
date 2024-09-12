module full_subtractor (input minuend,
		   	input subtrahend,
		   	input borrow_in,
		   	output wire diff,
		   	output wire borrow_out);

		assign diff = minuend ^ subtrahend ^ borrow_in;
		
		assign borrow_out = (!minuend & subtrahend) | (!minuend & borrow_in) | (subtrahend & borrow_in);

endmodule

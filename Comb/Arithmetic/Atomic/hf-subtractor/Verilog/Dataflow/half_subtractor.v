module half_subtractor (input minuend, 
		   	input subtrahend,
		   	output wire diff,
		   	output wire borrow_out);

		assign diff = minuend ^ subtrahend;
		
		assign borrow_out = ~minuend & subtrahend;

endmodule

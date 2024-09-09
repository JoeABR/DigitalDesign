module half_subtractor (input minuend, 
		   	input subtrahend,
		   	output diff,
		   	output borrow_out);
		
		wire minuend_bar;
		not(minuend_bar, minuend);
		xor(diff, minuend, subtrahend);
		and(borrow_out, minuend_bar, subtrahend);

endmodule

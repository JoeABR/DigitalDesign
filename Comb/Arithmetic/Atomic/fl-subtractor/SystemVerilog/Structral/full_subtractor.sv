module full_subtractor (input logic minuend,
			input logic subtrahend,
			input logic borrow_in,
			output wire diff,
			output wire borrow_out);


		timeunit 1ns;

		wire w0_minuend_bar, w1_or_borrow_subtr, w2_and_borrow_subtr, w3_and_w1_w0;

		xor(diff, minuend, subtrahend, borrow_in);
		not(w0_minuend_bar, minuend);
		or(w1_or_borrow_subtr, borrow_in, subtrahend);
		and(w2_and_borrow_subtr, borrow_in, subtrahend);
		and(w3_and_w1_w0, w1_or_borrow_subtr, w0_minuend_bar);
		or(borrow_out, w2_and_borrow_subtr, w3_and_w1_w0);

endmodule : full_subtractor

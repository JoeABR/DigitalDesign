module full_subtractor (input minuend,
		   	input subtrahend,
		   	input borrow_in,
		   	output wire diff,
		   	output wire borrow_out);

		wire hf_sub_0_diff, hf_sub_0_borrow, hf_sub_1_borrow;

		half_subtractor hf_sub_0(minuend, subtrahend, hf_sub_0_diff, hf_sub_0_borrow);
		half_subtractor hf_sub_1(hf_sub_0_diff, borrow_in, diff, hf_sub_1_borrow);
		or(borrow_out, hf_sub_0_borrow, hf_sub_1_borrow);
endmodule

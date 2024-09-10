module full_adder (input augend,
		   input addend,
		   input carry_in,
		   output sum,
		   output carry_out);

	   wire hf_add_0_sum, hf_add_0_carry, hf_add_1_carry;
	   half_adder half_add_0 (augend, addend, hf_add_0_sum, hf_add_0_carry);
	   half_adder half_add_1 (hf_add_0_sum, carry_in, sum, hf_add_1_carry);
	   or(carry_out, hf_add_0_carry, hf_add_1_carry);

endmodule

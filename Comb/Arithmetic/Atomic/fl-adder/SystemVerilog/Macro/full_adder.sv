module full_adder (input logic augend,
		   input logic addend,
	   	   input logic carry_in,
	   	   output wire sum,
	   	   output wire carry_out);

	   timeunit 1ns;

	   wire hf_add_0_sum, hf_add_0_carry, hf_add_1_carry;

	   half_adder half_adder_0(augend, addend, hf_add_0_sum, hf_add_0_carry);
	   half_adder half_adder_1(hf_add_0_sum, carry_in, sum, hf_add_1_carry);
	   or(carry_out, hf_add_0_carry, hf_add_1_carry);

endmodule : full_adder

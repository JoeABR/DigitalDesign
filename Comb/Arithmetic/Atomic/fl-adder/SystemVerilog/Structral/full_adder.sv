module full_adder (input logic augend,
		   input logic addend,
	   	   input logic carry_in,
	   	   output wire sum,
	   	   output wire carry_out);

	   timeunit 1ns;

	   wire aug_add, add_carr, carr_aug;
	   
	   xor(sum, augend, addend, carry_in);
	   and(aug_add, augend, addend);
	   and(add_carr, addend, carry_in);
	   and(carr_aug, carry_in, augend);
	   or(carry_out, aug_add, add_carr, carr_aug);

endmodule : full_adder

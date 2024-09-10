module full_adder (input augend,
		   input addend,
	   	   input carry_in,
	   	   output sum,
	   	   output carry_out);

	   wire aug_add, add_carr, carr_aug;
	   xor(sum, augend, addend, carry_in);
	   and(aug_add, augend, addend);
	   and(add_carr, addend, carry_in);
	   and(carr_aug, carry_in, augend);
	   or(carry_out, aug_add, add_carr, carr_aug);
	   
endmodule

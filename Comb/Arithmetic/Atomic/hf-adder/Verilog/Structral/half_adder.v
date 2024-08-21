module half_adder (input augend,
		   input addend,
		   output sum,
		   output carry_out);

and (carry_out, augend, addend);
xor (sum, augend, addend);

endmodule

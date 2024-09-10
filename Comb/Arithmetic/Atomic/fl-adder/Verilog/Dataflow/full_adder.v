module full_adder (input augend,
		   input addend,
		   input carry_in,
		   output wire sum,
		   output wire carry_out);
	   
	   assign sum = augend ^ addend ^ carry_in;
	   assign carry_out = (augend & addend) | (addend & carry_in) | (augend & carry_in);

endmodule

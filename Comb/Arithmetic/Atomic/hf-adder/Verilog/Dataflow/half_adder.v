module half_adder (input augend,
		 input addend,
	 	 output sum,
	 	 output carry_out);

	assign sum = augend ^ addend;
	assign carry_out = augend & addend;
endmodule

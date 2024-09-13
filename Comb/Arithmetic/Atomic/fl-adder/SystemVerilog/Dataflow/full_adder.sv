module full_adder (input logic augend,
		   input logic addend,
	   	   input logic carry_in,
	   	   output wire sum,
	   	   output wire carry_out);

	   timeunit 1ns;

	   assign sum = augend ^ addend ^ carry_in;
	   
	   assign carry_out = (augend & addend) | (addend & carry_in) | (carry_in & augend);

endmodule : full_adder		   

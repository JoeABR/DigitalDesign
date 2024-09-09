module half_adder (input logic augend,
		   input logic addend,
	   	   output wire sum,
	   	   output wire carry_out);
	   timeunit 1ns;
	   xor(sum, augend, addend);
	   and(carry_out, augend, addend);

endmodule : half_adder

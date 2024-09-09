module half_adder(input logic augend,
		  input logic addend,
	  	  output wire sum,
	  	  output wire carry_out);
	  timeunit 1ns;

	  assign sum = augend ^ addend;
	  assign carry_out = augend & addend;

endmodule : half_adder

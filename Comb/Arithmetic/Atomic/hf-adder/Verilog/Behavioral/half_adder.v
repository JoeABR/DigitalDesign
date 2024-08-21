module half_adder (input augend,
		   input addend,
		   output reg sum,
		   output reg carry_out);

	   always@(augend, addend)
	   begin
		   if(augend)
			   {sum, carry_out} <= {!addend, addend};
		   else
			   {sum, carry_out} <= {addend, 1'b0};
	   end
endmodule

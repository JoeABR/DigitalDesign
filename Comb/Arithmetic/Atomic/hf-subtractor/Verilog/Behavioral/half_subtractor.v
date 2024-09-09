module half_subtractor (input minuend, 
		   	input subtrahend,
		   	output reg diff,
		   	output reg borrow_out);

	   always@(minuend, subtrahend)
	   begin
		   if(minuend)
			   {diff, borrow_out} <= {!subtrahend, 1'b0};
		   else
			   {diff, borrow_out} <= {subtrahend, subtrahend};
	   end
endmodule

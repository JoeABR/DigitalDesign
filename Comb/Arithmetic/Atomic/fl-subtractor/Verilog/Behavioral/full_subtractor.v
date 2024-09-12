module full_subtractor (input minuend,
		   	input subtrahend,
		   	input borrow_in,
		   	output reg diff,
		   	output reg borrow_out);
	   
	   always @ (minuend, subtrahend, borrow_in) begin

		   if (minuend) begin
			   diff = !(subtrahend ^ borrow_in);
			   borrow_out = (subtrahend & borrow_in);
		   end
		   else begin
			   diff = (subtrahend ^ borrow_in);
			   borrow_out = (subtrahend | borrow_in);
		   end
	   end

endmodule

module half_subtractor_tb;
	   timeunit 1ns;
	   reg minuend, subtrahend;
	   wire diff, borrow_out;

	   half_subtractor half_subtractor_0 (.minuend(minuend),
		   		    	      .subtrahend(subtrahend),
				    	      .diff(diff),
				    	      .borrow_out(borrow_out));


	   typedef struct packed { logic minuend;
		   		   logic subtrahend;
				   logic diff;
				   logic borrow_out; } pattern_type;

	   
	   typedef pattern_type pattern_array[$size(pattern_type)];


	   const pattern_array patterns = '{'{0,0,0,0},
	   		       		    '{0,1,1,1},
			    		    '{1,1,0,0},
			    		    '{1,0,1,0}};

	
	   initial begin : simulation

	  	   begin : tracing
			   $dumpfile("wave.vcd");
			   $dumpvars(1, half_subtractor_tb.half_subtractor);
		   end : tracing


		   foreach (patterns[index]) begin : assertions
			   minuend=patterns[index].minuend;
			   subtrahend=patterns[index].subtrahend;
			   #1;
			   diff_assertion : assert(diff==patterns[index].diff) ; else $error("bad diff value");
			   borrow_out_assertion : assert(borrow_out==patterns[index].borrow_out) ; else $error("bad borrow out value");

		   end : assertions
	   $info("end of test");
	   $finish;
	   end : simulation
endmodule : half_subtractor_tb

module full_subtractor_tb;
	   timeunit 1ns;
	   reg minuend, subtrahend, borrow_in;
	   wire diff, borrow_out;

	   full_subtractor full_subtractor_0 (.minuend(minuend),
		   		    	      .subtrahend(subtrahend),
				    	      .borrow_in(borrow_in),
				    	      .diff(diff),
				    	      .borrow_out(borrow_out));


	   typedef struct packed { logic minuend;
		   		   logic subtrahend;
				   logic borrow_in;
				   logic diff;
				   logic borrow_out; } pattern_type;

	   
	   typedef pattern_type pattern_array[8];

	   const pattern_array patterns = '{'{0,0,0,0,0},
	   		       		    '{0,0,1,1,1},
			    		    '{0,1,0,1,1},
			    		    '{0,1,1,0,1},
				            '{1,0,0,1,0},
				    	    '{1,0,1,0,0},
				    	    '{1,1,0,0,0},
				    	    '{1,1,1,1,1}};
				    
	   initial begin : simulation

	  	   begin : tracing
			   $dumpfile("wave.vcd");
			   $dumpvars(minuend, subtrahend, borrow_in, diff, borrow_out);
		   end : tracing


		   foreach (patterns[index]) begin : assertions
			   minuend=patterns[index].minuend;
			   subtrahend=patterns[index].subtrahend;
			   borrow_in=patterns[index].borrow_in;
			   #1;
			   diff_assertion : assert(diff==patterns[index].diff) ; else $error("bad diff value");
			   borrow_out_assertion : assert(borrow_out==patterns[index].borrow_out) ; else $error("bad borrow out value");
		   end : assertions
	   $info("end of test");
	   $finish;
	   end : simulation
endmodule : full_subtractor_tb

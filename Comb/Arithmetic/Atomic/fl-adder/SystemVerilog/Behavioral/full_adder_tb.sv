module full_adder_tb;
	   timeunit 1ns;
	   reg augend, addend, carry_in;
	   wire sum, carry_out;

	   full_adder full_adder_0 (.augend(augend),
		   		    .addend(addend),
				    .carry_in(carry_in),
				    .sum(sum),
				    .carry_out(carry_out));


	   typedef struct packed { logic augend;
		   		   logic addend;
				   logic carry_in;
				   logic sum;
				   logic carry_out; } pattern_type;

	   
	   typedef pattern_type pattern_array[8];

	   const pattern_array patterns = '{'{0,0,0,0,0},
	   		       		    '{0,0,1,1,0},
			    		    '{0,1,0,1,0},
			    		    '{0,1,1,0,1},
				            '{1,0,0,1,0},
				    	    '{1,0,1,0,1},
				    	    '{1,1,0,0,1},
				    	    '{1,1,1,1,1}};
				    
	   initial begin : simulation

	  	   begin : tracing
			   $dumpfile("wave.vcd");
			   $dumpvars(augend, addend, carry_in, sum, carry_out);
		   end : tracing


		   foreach (patterns[index]) begin : assertions
			   augend=patterns[index].augend;
			   addend=patterns[index].addend;
			   carry_in=patterns[index].carry_in;
			   #1;
			   sum_assertion : assert(sum==patterns[index].sum) ; else $error("bad sum value");
			   carry_out_assertion : assert(carry_out==patterns[index].carry_out) ; else $error("bad carry out value");
		   end : assertions
	   $info("end of test");
	   $finish;
	   end : simulation
endmodule : full_adder_tb

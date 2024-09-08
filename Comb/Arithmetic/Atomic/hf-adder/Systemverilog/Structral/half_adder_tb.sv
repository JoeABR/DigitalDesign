module half_adder_tb;
	   timeunit 1ns;
	   reg augend, addend;
	   wire sum, carry_out;

	   half_adder half_adder_0 (.augend(augend),
		   		    .addend(addend),
				    .sum(sum),
				    .carry_out(carry_out));


	   typedef struct packed { logic augend;
		   		   logic addend;
				   logic sum;
				   logic carry_out; } pattern_type;

	   
	   typedef pattern_type pattern_array[$size(pattern_type)];


	   const pattern_array patterns = '{'{0,0,0,0},
	   		       		    '{1,0,1,0},
			    		    '{1,1,0,1},
			    		    '{0,1,1,0}};

	
	   initial begin : simulation

	  	   begin : tracing
			   $dumpfile("wave.vcd");
			   $dumpvars(1, half_adder_tb.half_adder);
		   end : tracing


		   foreach (patterns[index]) begin : assertions
			   augend=patterns[index].augend;
			   addend=patterns[index].addend;
			   #1;
			   sum_assertion : assert(sum==patterns[index].sum) ; else $error("bad sum value");
			   carry_out_assertion : assert(carry_out==patterns[index].carry_out) ; else $error("bad carry out value");

		   end : assertions
	   $info("end of test");
	   $finish;
	   end : simulation
endmodule : half_adder_tb

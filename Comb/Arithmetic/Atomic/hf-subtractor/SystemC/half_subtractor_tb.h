#include <half_subtractor.h>

SC_MODULE( half_subtractor_tb ) {

	half_subtractor *hf_sub;
	sc_trace_file *myfile;
	
	sc_signal< sc_logic > minuend;
	sc_signal< sc_logic > subtrahend;
	sc_signal< sc_logic > diff;
	sc_signal< sc_logic > borrow_out;


	void simulate();
	


	SC_CTOR ( half_subtractor_tb ) {

		hf_sub = new half_subtractor ("hf_sub");
		hf_sub->minuend(minuend);
		hf_sub->subtrahend(subtrahend);
		hf_sub->diff(diff);
		hf_sub->borrow_out(borrow_out);

		myfile = sc_create_vcd_trace_file("wave");

		sc_trace(myfile, minuend, "minuend");
		sc_trace(myfile, subtrahend, "subtrahend");
		sc_trace(myfile, diff, "diff");
		sc_trace(myfile, borrow_out, "borrow_out");
		
		SC_THREAD(simulate);

	};



	~half_subtractor_tb() {

		delete hf_sub;
		sc_close_vcd_trace_file( myfile );
	};

};

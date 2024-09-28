#include <half_adder.h>

SC_MODULE( half_adder_tb ) {

	half_adder *hf_add;
	sc_trace_file *myfile;
	
	sc_signal< sc_logic > augend;
	sc_signal< sc_logic > addend;
	sc_signal< sc_logic > sum;
	sc_signal< sc_logic > carry_out;


	void simulate();
	


	SC_CTOR ( half_adder_tb ) {

		hf_add = new half_adder ("hf_add");
		hf_add->augend(augend);
		hf_add->addend(addend);
		hf_add->sum(sum);
		hf_add->carry_out(carry_out);

		myfile = sc_create_vcd_trace_file("wave");

		sc_trace(myfile, augend, "augend");
		sc_trace(myfile, addend, "addend");
		sc_trace(myfile, sum, "sum");
		sc_trace(myfile, carry_out, "carry_out");
		
		SC_THREAD(simulate);

	};



	~half_adder_tb() {

		delete hf_add;
		sc_close_vcd_trace_file( myfile );
	};

};

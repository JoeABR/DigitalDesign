#include <full_adder.h>

SC_MODULE( full_adder_tb ) {

	full_adder *fl_add;
	sc_trace_file *myfile;
	
	sc_signal< sc_logic > augend;
	sc_signal< sc_logic > addend;
	sc_signal< sc_logic > carry_in;
	sc_signal< sc_logic > sum;
	sc_signal< sc_logic > carry_out;


	void simulate();
	


	SC_CTOR ( full_adder_tb ) {

		fl_add = new full_adder ("fl_add");
		fl_add->augend(augend);
		fl_add->addend(addend);
		fl_add->carry_in(carry_in);
		fl_add->sum(sum);
		fl_add->carry_out(carry_out);

		myfile = sc_create_vcd_trace_file("wave");

		sc_trace(myfile, augend, "augend");
		sc_trace(myfile, addend, "addend");
		sc_trace(myfile, carry_in, "carry_in");
		sc_trace(myfile, sum, "sum");
		sc_trace(myfile, carry_out, "carry_out");
		
		SC_THREAD(simulate);

	};



	~full_adder_tb() {

		delete fl_add;
		sc_close_vcd_trace_file( myfile );
	};

};

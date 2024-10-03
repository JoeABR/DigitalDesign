#include <systemc.h>

SC_MODULE ( half_subtractor ) {

	sc_in< sc_logic > minuend;
	sc_in< sc_logic > subtrahend;
	sc_out< sc_logic > diff;
	sc_out< sc_logic > borrow_out;

	void func();

	SC_CTOR ( half_subtractor ) {

		SC_METHOD ( func );
		sensitive << minuend << subtrahend;

	};
};

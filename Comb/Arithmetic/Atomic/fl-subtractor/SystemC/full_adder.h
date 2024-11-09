#include <systemc.h>

SC_MODULE ( full_adder ) {

	sc_in< sc_logic > augend;
	sc_in< sc_logic > addend;
	sc_in< sc_logic > carry_in;
	sc_out< sc_logic > sum;
	sc_out< sc_logic > carry_out;

	void func();

	SC_CTOR ( full_adder ) {

		SC_METHOD ( func );
		sensitive << augend << addend << carry_in;

	};
};

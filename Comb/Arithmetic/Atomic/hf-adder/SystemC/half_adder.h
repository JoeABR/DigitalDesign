#include <systemc.h>

SC_MODULE ( half_adder ) {

	sc_in< sc_logic > augend;
	sc_in< sc_logic > addend;
	sc_out< sc_logic > sum;
	sc_out< sc_logic > carry_out;

	void func();

	SC_CTOR ( half_adder ) {

		SC_METHOD ( func );
		sensitive << augend << addend;

	};
};

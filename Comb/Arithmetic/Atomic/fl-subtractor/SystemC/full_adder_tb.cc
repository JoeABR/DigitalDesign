#include <full_adder_tb.h>
#include <systemc.h>

void full_adder_tb::simulate() {

	struct pattern_type {
		sc_logic augend;
		sc_logic addend;
		sc_logic carry_in;
		sc_logic sum;
		sc_logic carry_out;
	};

	
	const pattern_type patterns[9] = {
		{SC_LOGIC_0,SC_LOGIC_0,SC_LOGIC_0,SC_LOGIC_0,SC_LOGIC_0},
		{SC_LOGIC_0,SC_LOGIC_0,SC_LOGIC_1,SC_LOGIC_1,SC_LOGIC_0},
		{SC_LOGIC_0,SC_LOGIC_1,SC_LOGIC_0,SC_LOGIC_1,SC_LOGIC_0},
		{SC_LOGIC_0,SC_LOGIC_1,SC_LOGIC_1,SC_LOGIC_0,SC_LOGIC_1},
		{SC_LOGIC_1,SC_LOGIC_0,SC_LOGIC_0,SC_LOGIC_1,SC_LOGIC_0},
		{SC_LOGIC_1,SC_LOGIC_0,SC_LOGIC_1,SC_LOGIC_0,SC_LOGIC_1},
		{SC_LOGIC_1,SC_LOGIC_1,SC_LOGIC_0,SC_LOGIC_0,SC_LOGIC_1},
		{SC_LOGIC_1,SC_LOGIC_1,SC_LOGIC_1,SC_LOGIC_1,SC_LOGIC_1},
		{SC_LOGIC_0,SC_LOGIC_0,SC_LOGIC_0,SC_LOGIC_0,SC_LOGIC_0}
	};

	int i;

	for (i=0; i < 9; i++) {

		augend.write(patterns[i].augend);
		addend.write(patterns[i].addend);
		carry_in.write(patterns[i].carry_in);
		wait(1, SC_NS);		
		sc_assert(sum.read() == patterns[i].sum);
		sc_assert(carry_out.read() == patterns[i].carry_out);

	};
	
	sc_stop();

}

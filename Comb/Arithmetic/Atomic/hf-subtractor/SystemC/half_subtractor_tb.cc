#include <half_subtractor_tb.h>
#include <systemc.h>

void half_subtractor_tb::simulate() {

	struct pattern_type {
		sc_logic minuend;
		sc_logic subtrahend;
		sc_logic diff;
		sc_logic borrow_out;
	};

	
	const pattern_type patterns[5] = {
		{SC_LOGIC_0,SC_LOGIC_0,SC_LOGIC_0,SC_LOGIC_0},
		{SC_LOGIC_0,SC_LOGIC_1,SC_LOGIC_1,SC_LOGIC_1},
		{SC_LOGIC_1,SC_LOGIC_1,SC_LOGIC_0,SC_LOGIC_0},
		{SC_LOGIC_1,SC_LOGIC_0,SC_LOGIC_1,SC_LOGIC_0},
		{SC_LOGIC_0,SC_LOGIC_0,SC_LOGIC_0,SC_LOGIC_0}
	};

	int i;

	for (i=0; i < 5; i++) {

		minuend.write(patterns[i].minuend);
		subtrahend.write(patterns[i].subtrahend);
		wait(1, SC_NS);		
		sc_assert(diff.read() == patterns[i].diff);
		sc_assert(borrow_out.read() == patterns[i].borrow_out);

	};
	
	sc_stop();

}

#include <full_adder_tb.h>
#include <systemc.h>

int sc_main ( int argc, char *argv[] ) {
	
	full_adder_tb *tb = NULL;
	tb = new full_adder_tb("tb");
	sc_start();
	delete tb;
	return 0;

}

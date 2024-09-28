#include <half_adder_tb.h>
#include <systemc.h>

int sc_main ( int argc, char *argv[] ) {
	
	half_adder_tb *tb = NULL;
	tb = new half_adder_tb("tb");
	sc_start();
	delete tb;
	return 0;

}

#include <half_adder.h>
#include <systemc.h>


void half_adder::func() {

	sum.write( augend.read() ^ addend.read() );
	carry_out.write( augend.read() & addend.read() );

}

#include <full_adder.h>
#include <systemc.h>


void full_adder::func() {

	sum.write( augend.read() ^ addend.read() ^ carry_in.read() );
	carry_out.write( (augend.read() & addend.read()) | (augend.read() & carry_in.read()) | (addend.read() & carry_in.read()) );

}

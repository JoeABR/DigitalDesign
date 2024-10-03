#include <half_subtractor.h>
#include <systemc.h>


void half_subtractor::func() {

	diff.write( minuend.read() ^ subtrahend.read() );
	borrow_out.write( (~minuend.read()) & subtrahend.read() );

}

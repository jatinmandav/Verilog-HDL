`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//
// By:    Jatin Kumar Mandav
// Design Name:   FourToOneMUX
//
// Description: Test Bench File For FourToOneMUX Module
//
// Verilog Test Fixture created by ISE for module: FourToOneMUX
// 
////////////////////////////////////////////////////////////////////////////////

module MUXSimulate;

	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;
	reg s0;
	reg s1;

	// Outputs
	wire z;

	// Instantiate the Unit Under Test (UUT)
	FourToOneMUX uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d),
		.s0(s0),
		.s1(s1),
		.z(z)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		s0 = 0;
		s1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100 a=1;
		#100 s0=1;a=0;b=1;
		#100 s1=1;s0=0;b=0;c=1;
		#100 s1=1;s0=1;c=0;d=1;
		#100 s1=0;s0=0;d=0;
		
	end
      
	initial begin
		$monitor("s0:%d, s1:%d, a:%d, b:%d, c:%d, d:%d, z: %d\n\n", s0, s1, a, b, c, d, z);
	end
endmodule


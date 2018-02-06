`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//
// By: Jatin Kumar Mandav
// Design Name:   TwoToFourDecoder
//
// Description: Test Bench File For 2-to-4 Decoder Module
//
// Verilog Test Fixture created by ISE for module: TwoToFourDecoder
// 
////////////////////////////////////////////////////////////////////////////////

module decoderSimulate;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire q0;
	wire q1;
	wire q2;
	wire q3;

	// Instantiate the Unit Under Test (UUT)
	TwoToFourDecoder uut (
		.a(a), 
		.b(b), 
		.q0(q0), 
		.q1(q1), 
		.q2(q2), 
		.q3(q3)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#100 a=0;b=0;
		#100 a=0;b=1;
		#100 a=1;b=0;
		#100 a=1;b=1;
		
	end
      
endmodule


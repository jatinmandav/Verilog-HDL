`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// 
// By:    Jatin Kumar Mandav
// Design Name:   FullAdderCircuit
//
// Description: Stimulus File For Full Adder Circuit
//
// Verilog Test Fixture created by ISE for module: FullAdderCircuit
//
////////////////////////////////////////////////////////////////////////////////

module fullAdderStimulus;

	// Inputs
	reg input1;
	reg input2;
	reg carry_in;

	// Outputs
	wire sum;
	wire carry_out;

	// Instantiate the Unit Under Test (UUT)
	FullAdderCircuit uut (
		.input1(input1), 
		.input2(input2), 
		.carry_in(carry_in), 
		.sum(sum), 
		.carry_out(carry_out)
	);

	initial begin
		// Initialize Inputs
		input1 = 0;
		input2 = 0;
		carry_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#50 input1 = 1;
		#50 input2 = 1;
		#50 carry_in = 1;
	end
	
	initial begin
		$monitor("Input1: %d, Input2: %d, Carry_in: %d\nSum: %d, Carry_out: %d\n\n", input1, input2, carry_in, sum, carry_out);
	end
endmodule


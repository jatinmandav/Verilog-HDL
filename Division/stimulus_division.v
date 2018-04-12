`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//
// By: Jatin Kumar Mandav
// 
// Module: Stimulus Division
// 
// Description: Stimulus or Test Bench for Division.v
//
////////////////////////////////////////////////////////////////////////////////

module stimulus_division;

	// Inputs
	reg [7:0] divisor;
	reg [7:0] dividend;

	// Outputs
	wire [7:0] remainder;
	wire [7:0] result;

	// Instantiate the Unit Under Test (UUT)
	division uut (
		.divisor(divisor), 
		.dividend(dividend), 
		.remainder(remainder), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		divisor = 13;
		dividend = 28;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		divisor = 5;
		dividend = 25;
		
		#100
		divisor = 6;
		dividend = 37;
	end
      
	initial begin
		$monitor("Divisor: %d, Dividend: %d, Remainder: %d, Result: %d\n", divisor, dividend,remainder, result);
	end
endmodule


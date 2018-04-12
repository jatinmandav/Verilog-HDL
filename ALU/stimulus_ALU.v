`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// 
// By: Jatin Kumar Mandav
//
// Module: Test Bench ALU
//
// Description: Test Bench for ALU module, ALU.v
//
////////////////////////////////////////////////////////////////////////////////

module stimulus_ALU;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg [3:0] opcode;

	// Outputs
	wire [7:0] op;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.op(op), 
		.a(a), 
		.b(b), 
		.opcode(opcode)
	);
	
	integer i;

	initial begin
		// Initialize Inputs
		a = 8'h01;
		b = 8'h02;
		opcode = 4'h0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for(i = 0;i < 16;i = i + 1)
		begin
			opcode = opcode + 8'h01;
			#10;
		end
	end
      
endmodule


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// By:    Jatin Kumar Mandav
// Module Name:    TwoToFourDecoder 
//
// Description: 2 to 4 Decoder Using Verilog-HDL
//
//////////////////////////////////////////////////////////////////////////////////
module TwoToFourDecoder(
	input a,
	input b,
	output q0,
	output q1,
	output q2,
	output q3
    );

and(q0, ~a, ~b);
and(q1, ~a, b);
and(q2, a, ~b);
and(q3, a, b);

endmodule

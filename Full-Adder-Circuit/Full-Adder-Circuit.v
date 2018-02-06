`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// By: Jatin Kumar Madav
//
// Module Name:    Full-Adder-Circuit 
//
// Description: A simple Full Adder Circuit using XOR and AND Gates
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module FullAdderCircuit(
	input input1,
	input input2,
	input carry_in,
	output sum,
	output carry_out
    );

xor(sum, input1, input2, carry_in);

and(tempVar1, input1, input2);
and(tempVar2, input2, carry_in);
and(tempVar3, input1, carry_in);

or(carry_out, tempVar1, tempVar2, tempVar3);

endmodule

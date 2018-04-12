`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// By: Jatin Kumar Mandav
//
// Module: Division
//
// Description: Implementation of 8-bit Division Algorithm.
//
//////////////////////////////////////////////////////////////////////////////////
module division(divisor, dividend, remainder, result);

input [7:0] divisor, dividend;
output reg [7:0] result, remainder;

// Variables
integer i;
reg [7:0] divisor_copy, dividend_copy;
reg [7:0] temp;

always @(divisor or dividend)
begin
	divisor_copy = divisor;
	dividend_copy = dividend;
	temp = 0; 
	for(i = 0;i < 8;i = i + 1)
	begin
		temp = {temp[6:0], dividend_copy[7]};
		dividend_copy[7:1] = dividend_copy[6:0];
		/*
			* Substract the Divisor Register from the Remainder Register and
			* plave the result in remainder register (temp variable here!)
		*/
		temp = temp - divisor_copy;
		// Compare the Sign of Remainder Register (temp)
		if(temp[7] == 1)
		begin
		/*
			* Restore original value by adding the Divisor Register to the
			* Remainder Register and placing the sum in Remainder Register.
			* Shift Quatient by 1 and Add 0 to last bit.
		*/
			dividend_copy[0] = 0;
			temp = temp + divisor_copy;
		end
		else
		begin
		/*
			* Shift Quatient to left.
			* Set right most bit to 1.
		*/
			dividend_copy[0] = 1;
		end
	end
	result = dividend_copy;
	remainder = dividend - (divisor_copy*dividend_copy);
end
endmodule

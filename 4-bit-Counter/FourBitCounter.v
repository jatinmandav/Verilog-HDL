`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// By:    Jatin Kumar Mandav
// Module Name:    FourBitCounter 
//
// Description: 4-Bit Counter Using Verilog-HDL
//
//////////////////////////////////////////////////////////////////////////////////
module FourBitCounter(
	 input clk,
	 input reset,
	 output [3:0] count
	 );

reg [3:0] count;

always @ (posedge(clk))

begin
if (reset == 1'b1)
	count = 4'b0000;
else
	count = count + 1;
end
endmodule

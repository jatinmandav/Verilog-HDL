`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// By: Jatin Kumar Mandav
//
// Module: ALU - Arithmetic and Logic Unit
//
// Description: 
// -----------------------------------------------------------
// | 0000 | Addition
// -----------------------------------------------------------
// | 0001 | Substraction
// -----------------------------------------------------------
// | 0010 | Multiplication
// -----------------------------------------------------------
// | 0011 | Division
// -----------------------------------------------------------
// | 0100 | Modulo
// -----------------------------------------------------------
// | 0101 | Bit-Wise AND
// -----------------------------------------------------------
// | 0110 | Bit-Wise OR
// -----------------------------------------------------------
// | 0111 | Bit-Wise XOR
// -----------------------------------------------------------
// | 1000 | AND
// -----------------------------------------------------------
// | 1001 | OR
// -----------------------------------------------------------
// | 1010 | Bit-Wise Invert
// -----------------------------------------------------------
// | 1011 | Invert
// -----------------------------------------------------------
// | 1100 | Bit-Wise NAND
// -----------------------------------------------------------
// | 1101 | Bit-Wise NOR
// -----------------------------------------------------------
// | 1110 | Right Shift
// -----------------------------------------------------------
// | 1111 | Left Shift
// -----------------------------------------------------------
//
//////////////////////////////////////////////////////////////////////////////////
module ALU(op, a, b, opcode);

output reg [7:0] op;
input [7:0] a, b;
input [3:0] opcode;

always @(*)
begin
case (opcode)
	4'b0000:
		begin
		op = a + b;
		$display("Addition Operation: %d%d%d%d", opcode[3], opcode[2], opcode[1], opcode[0]);
		end
	4'b0001:
		begin
		op = a - b;
		$display("Substraction Operation: %d%d%d%d", opcode[3], opcode[2], opcode[1], opcode[0]);
		end
	4'b0010:
		begin
		op = a * b;
		$display("Multiplication Operation: %d%d%d%d", opcode[3], opcode[2], opcode[1], opcode[0]);
		end
	4'b0011:
		begin
		op = a / b;
		$display("Division Operation: %d%d%d%d", opcode[3], opcode[2], opcode[1], opcode[0]);
		end
	4'b0100:
		begin
		op = a % b;
		$display("Modulo Operation: %d%d%d%d", opcode[3], opcode[2], opcode[1], opcode[0]);
		end
	4'b0101:
		begin
		op = a & b;
		$display("Bit-Wise AND Operation: %d%d%d%d", opcode[3], opcode[2], opcode[1], opcode[0]);
		end
	4'b0110:
		begin
		op = a | b;
		$display("Bit-Wise OR Operation: %d%d%d%d", opcode[3], opcode[2], opcode[1], opcode[0]);
		end
	4'b0111:
		begin
		op = a ^ b;
		$display("Bit-Wise XOR Operation: %d%d%d%d", opcode[3], opcode[2], opcode[1], opcode[0]);
		end
	4'b1000:
		begin
		op = a && b;
		$display("AND Operation: %d%d%d%d", opcode[3], opcode[2], opcode[1], opcode[0]);
		end
	4'b1001:
		begin
		op = a || b;
		$display("OR Operation: %d%d%d%d", opcode[3], opcode[2], opcode[1], opcode[0]);
		end
	4'b1010:
		begin
		op = ~ a;
		$display("Bit-Wise Invert Operation: %d%d%d%d", opcode[3], opcode[2], opcode[1], opcode[0]);
		end
	4'b1011:
		begin
		op = ! a;
		$display("Invert Operation: %d%d%d%d", opcode[3], opcode[2], opcode[1], opcode[0]);
		end
	4'b1100:
		begin
		op = ~(a & b);
		$display("Bit-Wise NAND Operation: %d%d%d%d", opcode[3], opcode[2], opcode[1], opcode[0]);
		end
	4'b1101:
		begin
		op = ~(a | b);
		$display("Bit-Wise NOR Operation: %d%d%d%d", opcode[3], opcode[2], opcode[1], opcode[0]);
		end
	4'b1110:
		begin
		op = a >> 1;
		$display("Right Shift Operation: %d%d%d%d", opcode[3], opcode[2], opcode[1], opcode[0]);
		end
	4'b1111:
		begin
		op = a << 1;
		$display("Left Shift Operation: %d%d%d%d", opcode[3], opcode[2], opcode[1], opcode[0]);
		end
	default:
		op = 8'bXXXXXXXX;
	endcase
end
endmodule

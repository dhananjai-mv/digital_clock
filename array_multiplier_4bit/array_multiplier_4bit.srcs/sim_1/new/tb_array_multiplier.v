`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2025 10:22:36
// Design Name: 
// Module Name: tb_array_multiplier
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_array_multiplier();

reg [3:0] A,B;
wire [7:0] mul;

array_multiplier mul2(mul,A,B);

initial
begin
 A = 4'b0000;
 B = 4'b0000;
 
#10 A = 4'b0110;
B = 4'b1010;

#10 A = 4'd15;
B = 4'd15;

#10 A = 4'd11;
B = 4'd9;

#10 A = 4'd8;
B = 4'd5;

#10 A = 4'd4;
B = 4'd7;





end
endmodule

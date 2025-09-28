`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 13:55:31
// Design Name: 
// Module Name: ripple_carry_adder
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


module ripple_carry_adder(sum,cout,A,B);
output [3:0] sum;
output cout;
input[3:0] A;
input[3:0] B;
wire C1,C2,C3;
full_adder FA0(sum[0],C1,A[0],B[0],0);
full_adder FA1(sum[1],C2,A[1],B[1],C1);
full_adder FA2(sum[2],C3,A[2],B[2],C2);
full_adder FA3(sum[3],cout,A[3],B[3],C3);

endmodule
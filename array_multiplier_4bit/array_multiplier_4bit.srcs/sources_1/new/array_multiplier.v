`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2025 08:55:13
// Design Name: 
// Module Name: array_multiplier
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


module array_multiplier(output [7:0] mul,input [3:0] A,B);
wire [15:0] w;
wire [9:0] c;
wire [4:0] in;

and(w[0],A[0],B[0]);
and(w[1],A[0],B[1]);
and(w[2],A[0],B[2]);
and(w[3],A[0],B[3]);
and(w[4],A[1],B[0]);
and(w[5],A[1],B[1]);
and(w[6],A[1],B[2]);
and(w[7],A[1],B[3]);
and(w[8],A[2],B[0]);
and(w[9],A[2],B[1]);
and(w[10],A[2],B[2]);
and(w[11],A[2],B[3]);
and(w[12],A[3],B[0]);
and(w[13],A[3],B[1]);
and(w[14],A[3],B[2]);
and(w[15],A[3],B[3]);


full_adder fa1(mul[1],c[0], w[1],w[4],1'b0);
full_adder fa2(in[0],c[1], w[2],w[5],c[0]);
full_adder fa3(mul[2],c[2], in[0],w[8],c[1]);
full_adder fa4(in[1],c[3], w[3],w[6],c[2]);
full_adder fa5(in[2],c[4], in[1],w[9],c[3]);
full_adder fa6(mul[3],c[5], in[2],w[12],c[4]);
full_adder fa7(in[3],c[6], w[10],w[7],c[5]);
full_adder fa8(mul[4],c[7], in[3],w[13],c[6]);
full_adder fa9(mul[5],c[8], w[11],w[14],c[7]);
full_adder fa10(mul[6],c[9], w[15],1'b0,c[8]);

assign mul[0] = w[0];
assign mul[7] = c[9];


endmodule



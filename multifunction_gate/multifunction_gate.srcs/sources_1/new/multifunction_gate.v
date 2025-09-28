`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2025 18:36:35
// Design Name: 
// Module Name: multifunction_gate
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


module multifunction_gate(output F, input A, B, X, Y);
wire a,b,c,d;

and g1(a, A,B);
or g2(b, A,B);
nor g3(c, A,B);
nand g4(d, A,B);

mux_4x1 DUT(.out(F), .a(a), .b(b), .c(c), .d(d), .sel({X,Y}));

endmodule

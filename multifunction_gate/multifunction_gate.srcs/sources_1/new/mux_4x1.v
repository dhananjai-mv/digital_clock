`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2025 18:39:08
// Design Name: 
// Module Name: mux_4x1
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


module mux_4x1(output out, input a,b,c,d,input[1:0]sel);
wire w1, w2, w3, w4;

and n1(w1, ~sel[0], ~sel[1], a);
and n2(w2, sel[0], ~sel[1], b);
and n3(w3, ~sel[0], sel[1], c);
and n4(w4, sel[0], sel[1], d);

or n5(out, w1,w2,w3,w4);
endmodule

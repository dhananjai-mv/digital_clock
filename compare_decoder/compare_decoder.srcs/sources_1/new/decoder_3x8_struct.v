`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2025 16:51:02
// Design Name: 
// Module Name: decoder_3x8_struct
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


module decoder_3x8_struct(output [7:0]out, input [2:0]b);
wire w0,w1,w2;
not n0(w0,b[0]);
not n1(w1,b[1]);
not n2(w2,b[2]);

and g0(out[0], w0,w1,w2);
and g1(out[1], b[0],w1,w2);
and g2(out[2], w0,b[1],w2);
and g3(out[3], b[0],b[1],w2);
and g4(out[4], w0,w1,b[2]);
and g5(out[5], b[0],w1,b[2]);
and g6(out[6], w0,b[1],b[2]);
and g7(out[7], b[0],b[1],b[2]);
endmodule

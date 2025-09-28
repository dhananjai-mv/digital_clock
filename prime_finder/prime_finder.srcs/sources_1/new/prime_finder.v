`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2025 14:17:22
// Design Name: 
// Module Name: prime_finder
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


module prime_finder(output out, input [3:0]x);
wire w1, w2, w3, w4;
wire not0, not1, not2, not3;

not n0(not0,x[0]);
not n1(not1,x[1]);
not n2(not2,x[2]);
not n3(not3,x[3]);

and g0(w1,not2,x[1],x[0]);
and g1(w2,not1,x[2],x[0]);
and g2(w3,not2,not3,x[1]);
and g3(w4,not3,x[1],x[0]);

or g4(out, w1, w2, w3, w4);

endmodule

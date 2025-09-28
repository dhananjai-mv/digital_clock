`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2025 09:13:06
// Design Name: 
// Module Name: full_adder
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


module full_adder(output Sum, Cout, input A,B,Cin);
wire x1,x2,x3;
xor sum1(Sum,A,B,Cin);
and X1(x1,A,B);
and X2(x2,A,Cin);
and X3(x3,B,Cin);
or cout(Cout, x1,x2,x3);

endmodule

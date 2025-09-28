`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2025 22:59:05
// Design Name: 
// Module Name: tb_multifunction_gate
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


module tb_multifunction_gate();
wire F;
reg A, B, X, Y;

multifunction_gate duu(F,A,B,X,Y);
initial
begin
A = 0;
B = 0;
X = 0;
Y = 0;

#10 A = 0;
B = 1;
#10 A = 1;
B = 0;
#10 A = 1;
B = 1;

#10 X = 0;
Y = 1;
A = 0;
B = 0;
#10 A = 0;
B = 1;
#10 A = 1;
B = 0;
#10 A = 1;
B = 1;

#10 X = 1;
Y = 0;
A = 0;
B = 0;
#10 A = 0;
B = 1;
#10 A = 1;
B = 0;
#10 A = 1;
B = 1;

#10 X = 1;
Y = 1;
A = 0;
B = 0;
#10 A = 0;
B = 1;
#10 A = 1;
B = 0;
#10 A = 1;
B = 1;
end

endmodule

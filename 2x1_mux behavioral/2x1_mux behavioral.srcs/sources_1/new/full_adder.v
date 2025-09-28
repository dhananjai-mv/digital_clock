`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2025 14:49:40
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


module full_adder(s, c, a, b, cin);
output s, c;
input a, b, cin;
wire a1, b1, c2; 
half_adder HA1 (a1, b1, a, b);
half_adder HA2 (s, c2, a1, cin);
or Cout (c, c2, b1);

endmodule

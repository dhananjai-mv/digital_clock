`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2025 09:21:01
// Design Name: 
// Module Name: decoder
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


module decoder(y, a, e);
output [3:0] y;
input [1:0] a;
input e;

assign y[3] = e & a[1] & a[0];
assign y[2] = e & a[1] & (~a[0]);
assign y[1] = e & (~a[1]) & a[0];
assign y[0] = e & (~a[1]) & (~a[0]);

endmodule 

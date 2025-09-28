`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2025 08:48:43
// Design Name: 
// Module Name: encoder
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


module encoder(y, a);
output  [2:0] y;
input [0:7] a;

or A0( y[0] , a[1], a[3], a[5], a[7] );
or A1( y[1] , a[2], a[3], a[6], a[7] );
or A2( y[2] , a[4], a[5], a[6], a[7] );

endmodule

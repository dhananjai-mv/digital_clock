`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2025 14:37:41
// Design Name: 
// Module Name: tb_half_adder
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


module tb_half_adder();

wire ts,tc;
reg ta, tb;

half_adder HA (ts, tc, ta, tb);
initial
begin

ta = 0; tb = 0;
#10 ta = 0; tb = 1;
#10 ta = 1; tb = 0;
#10 ta = 1; tb = 1;
end 
endmodule

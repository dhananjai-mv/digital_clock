`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 15:42:53
// Design Name: 
// Module Name: tb_SR_latch
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


module tb_SR_latch();

reg R,S;
wire Q, Q1;

SR_latch DUT (Q,Q1,S,R);
initial begin
S = 0; R = 0;
#50 S = 0; R = 1;
#50 S = 1; R = 0;
#50 S = 1; R = 1;

end
endmodule

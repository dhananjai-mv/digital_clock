`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2025 15:00:30
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder();

wire ts, tcout;
reg ta, tb, tc;

full_adder DUT (ts, tcout, ta, tb, tc);

initial
begin
ta = 0; tb = 0; tc = 0;
#10 ta = 0; tb = 0; tc = 0;
#10 ta = 0; tb = 0; tc = 1;
#10 ta = 0; tb = 1; tc = 0;
#10 ta = 0; tb = 1; tc = 1;
#10 ta = 1; tb = 0; tc = 0;
#10 ta = 1; tb = 0; tc = 1;
#10 ta = 1; tb = 1; tc = 0;
#10 ta = 1; tb = 1; tc = 1;
end

endmodule

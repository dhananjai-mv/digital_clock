`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 09:32:27
// Design Name: 
// Module Name: t_ff_tb
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


module t_ff_tb();

reg t,clk ,rst;
wire q, qb;
initial clk =1'b0;
always
#10 clk = ~clk;
t_ff dut(q, qb, rst, clk, t);

initial
begin 
rst = 1'b1;
#20 rst =1'b0;
end

initial
begin


t = 1'b0; 
#40 t = 1'b1;
//#50 t = 1'b0;
//#10 t = 1'b1;
end
endmodule

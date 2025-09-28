`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 08:34:32
// Design Name: 
// Module Name: jk_ff_tb
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


module jk_ff_tb();

reg j,k,rst,clk;
wire q,qb;

jk_ff DUT (q,qb,j,k,rst,clk); 
initial clk = 1'b0;
always  #10clk = ~clk;
initial 
begin
 
rst = 1'b0;
#10 rst =1'b1;
#20 rst =1'b0;
end

initial
begin
j=1'b0;
#10 j=1'b1;
#30 j=1'b0;
#20 j=1'b1;
end

initial
begin
k=1'b0;
#30 k=1'b1;
#30 k=1'b0;
end


endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2025 14:45:43
// Design Name: 
// Module Name: tb_prime_finder
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


module tb_prime_finder();
reg [3:0]x;
wire out;

prime_finder DUT(out,x);
initial
begin
x = 4'd0;
#10 x = 4'd2;
#10 x = 4'd9;
#10 x = 4'd11;
end

endmodule

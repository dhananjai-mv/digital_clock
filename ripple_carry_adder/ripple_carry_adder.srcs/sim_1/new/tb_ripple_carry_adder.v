`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2025 14:28:10
// Design Name: 
// Module Name: tb_ripple_carry_adder
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


module tb_ripple_carry_adder();

reg [3:0] A,B;
wire [3:0] sum; 
wire cout;

ripple_carry_adder DUT (sum,cout,A,B);
initial begin
A = 4'b0000; B = 4'b0000;
#20 A = 4'b0001; B = 4'b0001;
#20 A = 4'b1110; B = 4'b0110;
#20 A = 4'b1111; B = 4'b1111; 
end
endmodule

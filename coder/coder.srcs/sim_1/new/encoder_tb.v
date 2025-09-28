`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2025 08:58:26
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb();

reg [0:7] a;
wire [2:0] y;

encoder DUT (y,a);
initial
begin
a = 8'b00000000;
#10 a = 8'b00000001;
#10 a = 8'b00000010;
#10 a = 8'b00000100;
#10 a = 8'b00001000;
#10 a = 8'b00010000;
#10 a = 8'b00100000;
#10 a = 8'b01000000;
#10 a = 8'b10000000;

end
endmodule



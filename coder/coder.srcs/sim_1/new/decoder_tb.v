`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2025 09:29:57
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb();

reg [1:0]a;
reg e;
wire [3:0] y;

decoder dut (y, a, e);

initial
begin

e = 0; a = 2'bxx;
#10 e = 1; a = 2'b00;
#10 e = 1; a = 2'b01;
#10 e = 1; a = 2'b10;
#10 e = 1; a = 2'b11;
end   

endmodule

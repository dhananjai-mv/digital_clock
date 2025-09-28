`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2025 18:08:50
// Design Name: 
// Module Name: tb_seven_segment_display
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


module tb_seven_segment_display();
reg [3:0]in;
wire [6:0]out;

seven_segment_display DUT(out, in);
initial
begin
in = 4'd0;
#10 in = 4'd1;
#10 in = 4'd2;
#10 in = 4'd3;
#10 in = 4'd4;
#10 in = 4'd5;
#10 in = 4'd6;
#10 in = 4'd7;
#10 in = 4'd8;
end
endmodule

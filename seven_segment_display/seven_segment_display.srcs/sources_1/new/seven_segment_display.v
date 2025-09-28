`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2025 17:27:46
// Design Name: 
// Module Name: seven_segment_display
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


module seven_segment_display(output [6:0] out, input [3:0]in);

begin
assign out = (in == 4'b0000) ? 7'b1111_110 : 
             (in == 4'b0001) ? 7'b0110_000 :
             (in == 4'b0010) ? 7'b1101_101 :
             (in == 4'b0011) ? 7'b1101_101 :
             (in == 4'b0100) ? 7'b1101_101 :
             (in == 4'b0101) ? 7'b1101_101 :
             (in == 4'b0110) ? 7'b1101_101 :  
             (in == 4'b0111) ? 7'b1101_101 : 
             (in == 4'b1000) ? 7'b1101_101 : 7'b0000_000;
end
endmodule

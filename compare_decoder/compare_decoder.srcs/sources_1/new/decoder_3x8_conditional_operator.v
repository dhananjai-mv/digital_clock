`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2025 16:51:02
// Design Name: 
// Module Name: decoder_3x8_conditional_operator
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


module decoder_3x8_conditional_operator(output[7:0]out, input [2:0]a);


assign out =  (a == 3'd0) ?  8'b0000_0001 : 
              (a == 3'd1) ?  8'b0000_0010 :
              (a == 3'd2) ?  8'b0000_0100 :
              (a == 3'd3) ?  8'b0000_1000 :
              (a == 3'd4) ?  8'b0001_0000 :
              (a == 3'd5) ?  8'b0010_0000 :
              (a == 3'd6) ?  8'b0100_0000 :
              (a == 3'd7) ?  8'b1000_0000 :  8'b0000_0000;
                

endmodule

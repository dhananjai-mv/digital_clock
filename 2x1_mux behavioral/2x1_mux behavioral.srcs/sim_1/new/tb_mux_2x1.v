`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2025 14:16:31
// Design Name: 
// Module Name: tb_mux_2x1
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


module tb_mux_2x1();
wire ty;
reg ta,tb,ts;

mux_2x1 DUT (ty, ta,tb, ts);

initial
begin
ta = 0; tb = 0; ts = 0;
#10 ta = 0; tb = 0; ts = 0;
#10 ta = 0; tb = 0; ts = 1;
#10 ta = 0; tb = 1; ts = 0;
#10 ta = 0; tb = 1; ts = 1;
#10 ta = 1; tb = 0; ts = 0;


end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 09:25:46
// Design Name: 
// Module Name: t_ff
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


module t_ff(output reg q, output qb, input rst, clk, t);
always @ (posedge clk)
begin 
if (rst) begin q <= 1'b0;
end
else begin
case (t)
 
1'b1 : q <= ~q;
1'b0 : q <= q;
endcase
end
end
assign qb = ~q;

endmodule

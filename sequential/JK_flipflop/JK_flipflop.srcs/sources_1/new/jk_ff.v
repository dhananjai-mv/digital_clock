`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2025 08:15:38
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(output  reg q,output qb, input j,k,rst,clk);


//clk clk1(clk_1);

always @ (posedge clk) begin
if (rst)
    q <= 0;
else begin

case ({j,k})
2'b00 : q <= q;
2'b01 : q <= 0;
2'b10 : q <= 1;
2'b11 : q <= ~q;
endcase
end

end
assign qb = ~q;

endmodule

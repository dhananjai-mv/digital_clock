`timescale 1s / 1s
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.09.2025 18:42:35
// Design Name: 
// Module Name: digital_clock
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


module digital_clock(input clk, reset, output sec, min, hr);
reg [5:0] sec, min;
reg [4:0] hr;


always @(posedge clk) begin
    if (reset) begin
        sec <= 6'd0;
        min <= 6'd0;
        hr <= 5'd0;
    end
    else if (sec != 6'd59) begin
        sec <= sec + 1;
        end 
        
    else begin
    sec <= 0;
        if ( min != 6'd59) begin
        min <= min + 1;
        end
        else begin
        min <= 0;
           if ( hr != 23 ) begin
           hr <= hr + 1;
            end
    else begin
    hr <= 0;
    end
    
   
    
    
    
    
     
    
    end
end
end







endmodule

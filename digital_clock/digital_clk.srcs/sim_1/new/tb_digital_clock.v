`timescale 1s / 1s

module tb_digital_clock();

    reg clk = 1'b0, reset = 1'b0 ;
    wire [5:0] sec, min;
    wire [4:0] hr;

    // Instantiate DUT
    digital_clock DUT (
        .clk(clk),
        .reset(reset),
        .sec(sec),
        .min(min),
        .hr(hr)
    );

    // Generate 100 MHz clock (10 ns period)
    always begin
    #500 clk = ~clk;
       #100000;
     $finish;
    end
    
 
    // Run simulation

endmodule

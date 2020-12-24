`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2020 02:24:11
// Design Name: 
// Module Name: brom_tb
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


module brom_tb(

    );
    reg clk =0;
    wire[3:0] Max;
    
    top_BROM tb1(.clk(clk),.Max(Max));
    
    always #5 clk = ~clk    
endmodule

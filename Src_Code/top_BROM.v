`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2020 01:27:05
// Design Name: 
// Module Name: top_BROM
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


module top_BROM(
    input clk,
    output reg [3:0] Max =0
    );
    
    reg [3:0] addr_reg =0, addr_next;
    wire [3:0] dout;
    always @(posedge clk)       //whenever there is a sequential block we can use non blocking assignment
        addr_reg <= addr_next;           // And vice versa in a combinational block ('<=' Non Blocking)
       
    always @(*)
    begin
        if(addr_reg == 4'd9)
           addr_next = addr_reg;
        else
            addr_next = addr_reg+1;
    end
    blk_mem_gen_0 your_instance_name (
      .clka(clk),    // input wire clka
      .addra(addr_reg),  // input wire [3 : 0] addra
      .douta(dout)  // output wire [3 : 0] douta
    );
    
    always@(*)
    begin
        if(dout>Max)
            Max = dout;
        else
            Max = Max;
     end
endmodule

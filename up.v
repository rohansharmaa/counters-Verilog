`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 01:39:51 PM
// Design Name: 
// Module Name: up
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


module up(clk,rst,q);
    input clk,rst;
    output reg[3:0] q;
    reg [27:0] clkdiv;
    always@(posedge clk)
        begin 
        if(~rst) clkdiv<=0;
        else
        clkdiv<=clkdiv+1;
        end
    always@(posedge clkdiv[25])
        begin
        if(!rst)
            q<=4'b0000;
        else
            q<=q+1'b1;
        end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 01:44:29 PM
// Design Name: 
// Module Name: up_tb
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


module up_tb;
    reg clk,rst;
    wire [3:0]q;
    up dut(clk,rst,q);
    always #5 clk=~clk;
    initial begin
    clk=0; rst=0;
    #20 rst=1;
    #20 rst=1;
    #40 rst=1;
    #60 $stop;
    end
endmodule

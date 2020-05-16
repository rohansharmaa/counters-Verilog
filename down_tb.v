`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 01:51:53 PM
// Design Name: 
// Module Name: down_tb
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


module down_tb;
 reg clk,rst;
 wire [3:0] q;

 down dut(clk,rst,q);
 always #5 clk=~clk;
 initial begin
    clk=0;rst=1;
    #5 rst=0;
    #50 rst=1;
    #10 rst=0;
    #10 rst=1;
    
 end
endmodule

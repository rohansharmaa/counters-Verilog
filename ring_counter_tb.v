`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 02:06:02 PM
// Design Name: 
// Module Name: ring_counter_tb
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


module ring_counter_tb;
    reg clk,clr;
    wire [3:0] q;
    ring_counter dut(q,clk,clr);
    always #5 clk=~clk;
    initial begin
        clk=0; clr=1;
        #5 clr=0;
        #40 clr=1;
        #5 clr=0;
        #20 clr=1;
        #40 clr=0;
        
    end
endmodule

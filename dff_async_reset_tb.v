`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2018 01:56:01 PM
// Design Name: 
// Module Name: dff_async_reset_tb
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


module dff_async_reset_tb;
    reg d,clk,rst; 
    wire q;
    dff_async_reset uut(.d(d),.clk(clk),.rst(rst),.q(q));
    always #5 clk=~clk;
    initial begin 
        $monitor("d=%b, clk=%b, rst=%b,q=%b",d,clk,rst,q);
        clk=0;
        rst=1;
        d=0;rst=1;
        #4 d=1;rst=0;
        #50 d=1;rst=1;
        #20 d=0; rst=0;
        #25 d=1;
        end
endmodule

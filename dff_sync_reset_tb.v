`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2018 02:31:55 PM
// Design Name: 
// Module Name: dff_sync_reset_tb
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


module dff_sync_reset_tb;
    wire q;
    reg d,clk,rst;
    dff_sync_reset uut(.d(d),.clk(clk),.rst(rst),.q(q));
        always #5 clk=~clk;
        initial begin 
            $monitor("d=%b, clk=%b, rst=%b,q=%b",d,clk,rst,q);
            clk=0;
            rst=1;
            d=0;rst=1;
            #5 d=1;rst=0;
            #20 d=1;rst=1;
            #20 d=0; rst=0;
            #25 d=1;
            end
endmodule

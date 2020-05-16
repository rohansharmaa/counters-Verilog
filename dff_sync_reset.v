`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2018 02:29:23 PM
// Design Name: 
// Module Name: dff_sync_reset
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


module dff_sync_reset(d,clk,rst,q);
    output q;
    input d,clk,rst;
    reg q;
    always@(posedge clk)
        if(~rst)
            q<=1'b0;
        else
            q<=d;
          
endmodule

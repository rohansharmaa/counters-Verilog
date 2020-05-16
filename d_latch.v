`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2018 01:37:36 PM
// Design Name: 
// Module Name: d_latch
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


module d_latch(d,en,rst,q );
    output q;
    input d,en,rst;
    reg q;
    always @(d or en or rst)
        if(~rst)
            q<=1'b0;
        else
            if(en)
                q<=d;
endmodule


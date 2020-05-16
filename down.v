`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 01:49:11 PM
// Design Name: 
// Module Name: down
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


module down(clk,rst,q);
    input clk,rst;
    output reg[3:0] q;
    always@(posedge clk)
    begin
        if(!rst)
            q<=4'b1111;
        else
            q<=q-1'b1;    
    end
endmodule
    

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2018 02:01:15 PM
// Design Name: 
// Module Name: ring_counter
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


module ring_counter(q,clk,clr );
    input clk,clr;
    output reg[3:0] q;
    reg [27:0] clkdiv;
    always@(posedge clk)
    begin
        if(clr==1)
            clkdiv<=0;
        else clkdiv<=clkdiv+1;
    end
    always@(posedge clkdiv[25])
    begin
        if(clr==1)
            q<=4'b1000;
       else begin
       
            q[3]<=q[0];
            q[2]<=q[3];
            q[1]<= q[2];
            q[0]<=q[1];
            end 
    end
endmodule

`timescale 1ns / 1ps


module dff_async_reset( d,clk,rst,q );
    output q;
    input d,clk,rst;
    reg q;
    always@(posedge clk or negedge rst)
        if(~rst)
            q<=1'b0;
        else
            q<=d;
endmodule

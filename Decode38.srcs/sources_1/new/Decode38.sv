`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/17 11:00:29
// Design Name: 
// Module Name: Decode38
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


module Decode38(
    input logic [2:0] a,
    input logic s1,
    input logic s2,
    input logic s3,
    output logic [7:0] y
    );
    logic s=s1&(~s3)&(~s2);
    always_comb 
        case(s)
            'b1:
                case(a)
                    0:y=8'b11111110;
                    1:y=8'b11111101;
                    2:y=8'b11111011;
                    3:y=8'b11110111;
                    4:y=8'b11101111;
                    5:y=8'b11011111;
                    6:y=8'b10111111;
                    7:y=8'b01111111;
                 endcase
             'b0:
                y=8'b11111111;
        endcase
endmodule

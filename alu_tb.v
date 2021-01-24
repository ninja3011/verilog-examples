`timescale 1ns/1ns
`include "alu.v"
module alu_tb();

    reg [7:0] A, B;
    reg [3:0] sel;
    wire [7:0] out;
    wire carry_out;

    integer i ;
    alu uut(A,B ,sel,out,carry_out);

    initial begin
        $monitor("A = %b, B = %b, Out = %b, Cout = %b, sel = %b",A,B,out,carry_out,sel);
        $dumpfile("alu.vcd");
        $dumpvars(0,alu_tb);
        A = 8'h05;
        B = 8'h04;
        sel = 4'h0;
        for(i=0;i<4;i++)
        begin
            sel= sel + 8'h01;
            #10;
        end
    end
endmodule
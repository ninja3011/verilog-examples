`timescale 1ns/1ns
`include "dec3to8.v"

module dec3to8_tb();
    reg [2:0] sel;
    reg enb_;
    wire [7:0] out;

    dec3to8 uut(out, enb_, sel);
    initial 
        begin
            $monitor("enb_ = %b sel = %b out = %b", enb_,sel, out);
            $dumpfile("dec3to8.vcd");
            $dumpvars(0,dec3to8_tb);
            enb_=1;
            sel = 3'b000; #10;
            enb_=0;
            sel = 3'b000; #10;
            sel = 3'b001; #10;
            sel = 3'b010; #10;
            sel = 3'b011; #10;
            sel = 3'b100; #10;
            sel = 3'b101; #10;
            sel = 3'b111; #10;
            $finish;

        end
endmodule
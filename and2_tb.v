// 2 input and gate tb

`timescale 1ns/1ns 
`include "and2.v" // linting

module and2_tb();
reg a;
reg b;
wire y;

and2 uut(a,b,y);

initial
begin 
    $dumpfile("and2.vcd");
    $dumpvars(0,and2_tb);
    $monitor("a = %b,b = %b,y = %b",a,b,y);
    a = 0; b = 0; #10
    a = 0; b = 1; #10
    a = 1; b = 0; #10
    a = 1; b = 1; #10
    $finish;

end
endmodule
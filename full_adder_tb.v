`timescale 1ns/ 1ns
`include "full_adder.v"

module full_adder_tb;

 reg A,B,Cin;
 wire S,Cout;  
 //Verilog code for the structural full adder 
 full_adder uut(A, B, Cin, S, Cout);
 initial begin
 
   $dumpfile("full_adder_tb.vcd");
   $dumpvars(0, full_adder_tb);
   
   A = 0;
   B = 0;
   Cin = 0;
   #5;
   A = 0;
   B = 0;
   Cin = 1;
   #5;  
   A = 0;
   B = 1;
   Cin = 0;
   #5;
   A = 0;
   B = 1;
   Cin = 1;
   #5;
   A = 1;
   B = 0;
   Cin = 0;
   #5;
   A = 1;
   B = 0;
   Cin = 1;
   #5;
   A = 1;
   B = 1;
   Cin = 0;
   #5;  
   A = 1;
   B = 1;
   Cin = 1;
   #5;  
   
   $display("completed");
  end
      
endmodule 

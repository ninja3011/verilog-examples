`timescale 1ns/1ns
`include "dff.v"

module testbench;

reg D =0, CLK =0;
wire Q;

dff UUT(D, CLK, Q);

always begin 
	CLK = ~CLK;
	#10;
end

initial begin
	$dumpfile("dff.vcd");
	$dumpvars(0,testbench);
	D=1; #40;
	D = 0; #40;
	$finish;
end
endmodule

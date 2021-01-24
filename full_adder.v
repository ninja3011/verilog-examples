module full_adder (input A, input B, input Cin,output S, output Cout);
	xor(S, A, B, Cin);
	wire xor_a_b;
	wire cin_and;
	wire and_a_b;
	
	xor(xor_a_b, A, B);
	and(cin_and, Cin, xor_a_b);
	and(and_a_b, A, B);
	or(Cout, and_a_b, cin_and);
endmodule

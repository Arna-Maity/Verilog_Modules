//This Program implements a slightly different implementation of a
// n:1 Multiplexer...

module mux2to1 #(parameter n = 2) (
	output f,
	input [$clog2(n)-1:0] sel,
	input [n-1:0] in);

assign f = in[sel];
endmodule

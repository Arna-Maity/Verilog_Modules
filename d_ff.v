// Implementation of a simple D - Flip Flop using Behavioral Modelling...

module D_FF(
	input D,
	input clk,
	output Q);

 reg Q;

 always @(posedge clk) 
	 Q <= D;
endmodule

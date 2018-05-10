// This File Provides a Functional/Behavioral Description of a D - Flip Flop
// with synchronous clear ...

module D_FF (
	input D,
	input clk,
	input clr,
	output Q);

 reg Q;
 always @(posedge clk)
 begin
	if(clr)
	       Q <= 1'b0;

        else
	 Q <= D;
 end 

endmodule

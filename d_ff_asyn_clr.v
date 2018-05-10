// This File provides a Functional/Behavioral Description of a D - Flip Flop
// with asynchronous clear...

module D_FF(
	input D,
	input clk,
	input clr,
	output Q);

 reg Q;

 always @(posedge clk or clr)
	  begin
		  if(clr)
			  Q <= 1'b0;

		  else
			  Q <= D;
	  end
	  
endmodule

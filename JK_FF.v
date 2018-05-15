// This File implements a JK - Flip Flop...


module jk_ff(output Q,
	     output Q_b,
	     input J,
	     input K,
	     input clk);
  reg Q;
  assign Q_b = ~Q;

  always @(posedge clk)
  begin
	  case({J,K})
		  {1'b0,1'b1} : Q <= 1'b0;
		  {1'b1,1'b0} : Q <= 1'b1;
		  {1'b1,1'b1} :
			  if(Q == 1'b0)
				  Q <= 1'b1;
			  else
				  Q <= 1'b0;
	  endcase
  end
  
endmodule

// This file provides a structural description of an N bit Bidirectional Shift
// register.

`include "mux2.v"
`include "d_ff_asyn_clr.v"

 module Bi_Shift_Reg #(parameter N = 8) (
	 input L_R,
	 input Din_L,
	 input Din_R,
	 input clk,
	 input asyn_clr,
	 output Dout_L,
	 output Dout_R);
 
  wire [N:-1] wr;
  wire [N-1:0] mux_out;

  // Following assignments are explained in the diagram in the accompanying
  // README.md file...
  assign wr[-1] = Din_R;
  assign Dout_R =wr[N];
  assign wr[N] = Din_L;
  assign Dout_L = wr[-1];

  genvar i;

  //Instantiates N 2:1 MUX's for implementing Bidirectional Functionality in
  //the shift register as described by the diagram in the accompanying
  //README.md file...
  generate
	 for(i=0;i<N;i=i+1)
		 mux2to1 DIR(.sel(L_R),.in({wr[i-1],wr[i+1]}),.f(mux_out[i]));
  endgenerate

  //Instantiates N D - Flip Flops to implement the N bit Register...
  genvar j;
  generate 
	  for(j=0;j<N;j=j+1)
		  D_FF DFF(.clr(asyn_clr),.clk(clk),.D(mux_out[j]),.Q(wr[j]));

  endgenerate


endmodule

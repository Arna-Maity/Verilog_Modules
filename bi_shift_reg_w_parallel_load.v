// This file gives a structural description of a bidirectional Shift Register
// With Parallel Load...
`include "mux2.v"
`include "d_ff_asyn_clr.v"

module SREG_PARAL_LOAD #(parameter N = 8) (
	input Din_R,
	input Din_L,
	input clk,
	input clr,
	input [1:0] M,
	input [N-1:0] p_load,
	output Dout_R,
	output Dout_L);
 
 //The Following Assignments are explained in the accompanying README.md
 //file...
 assign wr[-1] = Din_R;
 assign Dout_R = wr[N-1];
 assign wr[N] = Din_L;
 assign Dout_L = wr[0]; 
 
 wire [N:-1] wr;
 wire [N-1:0] D_inp;

 genvar i,j;

 // Generates N 3:1 MUX's for Left Shift, Right Shift and Parallel Load
 // Functionality...
 generate
	 for(i=0;i<N;i=i+1)
		 mux2to1 #(.n(3)) MUX(.f(D_inp[i]),.sel(M),.in({wr[i-1],wr[i+1],p_load[i]}));

 endgenerate

 // Generates N D Flip Flops for implementing the Shift Register...
 generate
	 for(j=0;j<N;j=j+1)
		 D_FF DFF(.clk(clk),.D(D_inp[j]),.clr(clr),.Q(wr[j]));
 endgenerate

endmodule


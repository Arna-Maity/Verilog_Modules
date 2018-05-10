// This File contains a structural Description of a n - bit Shift Register...
`include "d_ff_asyn_clr.v"
//`include "clock_gen.v"

module shiftReg #(parameter N = 8) (
	input Din,
	input asyn_clr,
        input clk,
	output Dout);

 wire [N:0] w;
 assign w[0] = Din;
 assign Dout = w[N];

 genvar i;
 generate
	 for(i=0;i<N;i=i+1)
		 D_FF DF(.D(w[i]),.clk(clk),.Q(w[i+1]),.clr(asyn_clr));
 endgenerate
endmodule

 

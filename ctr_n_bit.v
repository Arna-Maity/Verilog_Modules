// This File implements an n - bit/ modulo 2^N UP/DOWN counter...
// A counter circuit is also often used as a clock divider circuit...
// A simple T - Flip Flop also acts as a divide-by-2 circuit whose output
// signal Q toggles at frequency which is half of the input clock frequency...

`include "mux2.v"
`include "t_ff.v"

module CTR_N #(parameter N = 3) (output [N-1:0] ctr_out,
	                         input up_dwn_b);

 wire [N-1:0] q;
 wire [N-1:0] q_b;
 wire [N-2:-1] mux_out; 
 wire w;

 assign w = 1'b1;
 assign ctr_out = mux_out;

 genvar i,j;

 generate
	 for(i=0;i<N;i=i+1)
		 mux2to1 #(.n(2)) MUX(.f(mux_out[i]),.sel(up_dwn_b),.in({q[i],q_b[i]}));
 endgenerate

 generate 
	 for(j=-1;j<(N-1);j=j+1)
		 T_FF TF(.clk(mux_out[j]),.Q(q[j+1]),.Q_b(q_b[j+1]),.T(w));
 
 endgenerate

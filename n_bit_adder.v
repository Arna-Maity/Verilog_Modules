// The Structural Description of an N bit adder using n Full Adders ...

`include "full_adder.v"

module nBitAdder #(parameter N = 8) (
	output [N-1:0] sum,
	output cout,
	input [N-1:0] a,
	input [N-1:0] b,
	input cin);

 wire [N:0] c_int;
 assign c_int[0] = 0;
 assign cout = c_int[N];
 genvar i;

 generate
	 for(i=0;i<N;i=i+1)
	 begin
		 full_add FA(.a_sig(a[i]),.b_sig(b[i]),.cin_sig(c_int[i]),.cout_sig(c_int[i+1]),.sum_sig(sum[i]));   // Instantiation of N 1 bit Full Adders...
	 end
 endgenerate

 endmodule

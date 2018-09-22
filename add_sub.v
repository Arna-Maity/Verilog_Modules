// Design of a n bit Adder/Subtractor Circuit with overflow detection...
`include "full_adder.v"

module add_sub #(parameter N = 4) (
	input [N-1:0] A,
	input [N-1:0] B,
	input M,
	output [N-1:0] sum,
        output cout
        output v);

 genvar i,j;
 wire [N-1:0] XOR_FA;
 wire [N:0] carry;

 assign cout = carry[N];
 assign carry[0] = M;

// Instantiates N Full Adders ....
 generate
	 for(i=0;i<N;i=i+1)
	 begin
		 full_add FA(.a_sig(A[i]),.b_sig(XOR_FA[i]),.cin_sig(carry[i]),.sum_sig(sum[i]),.cout_sig(carry[i+1]));
	 end
 endgenerate

// Instantiates N XOR gates 
 generate
	 for(j=0;j<N;j=j+1)
	 begin
		 xor B_XOR(XOR_FA[j],B[j],M);
	 end
 endgenerate

// The following XOR gate implements overflow detection...
 xor(v,cout,carry[N-1]);
endmodule

        

 
 

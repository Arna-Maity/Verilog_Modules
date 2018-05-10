// This File gives a structural description of a 4 bit carry_lookahead unit...

module CLU(
	input [3:0] A,
	input [3:0] B,
	input Ci,
	output Co);
 
 // The Carry Lookahead Unit....
 wire [3:0] P;
 wire [3:0] G;
 wire [4:0] carry;

 assign carry[0] = Ci;
 assign Co = carry[4]; 

 // Generates the Propagate and Generate values for each stage of the adder...
 // Pi = Ai + Bi
 // Gi = Ai.Bi

 genvar i;

 generate
	 for(i=0;i<4;i=i+1)
	 begin
		or P_i(P[i],A[i],B[i]);
		and G_i(G[i],A[i],B[i]);
	 end
 endgenerate

 //Generating carry for 1st Stage
 wire w1_1;
 and(w1_1,P[0],carry[0]);
 or(carry[1],G[0],w1); 
 
 //Generating carry for 2nd Stage
 wire w2_1,w2_2;
 and(w2_1,G[0],P[1]);
 and(w2_2,P[1],P[0],carry[0]);
 or(carry[2],G[1],w2_1,w2_2);

 //Generating carry for 3rd Stage
 wire w3_1,w3_2,w3_3;
 and(w3_1,G[1],P[2]);
 and(w3_2,G[0],P[1],P[2]);
 and(w3_3,P[2],P[1],P[0],carry[0]); 
 or(carry[3],G[2],w3_1,w3_2,w3_3);
 
 //Generating carry for 4th Stage
 wire w4_1,w4_2,w4_3,w4_4;
 and(w4_1,G[2],P[3]);
 and(w4_2,G[1],P[2],P[3]);
 and(w4_3,G[0],P[1],P[2],P[3]);
 and(w4_4,P[3],P[2],P[1],P[0],carry[0]);
 or(carry[4],w4_1,w4_2,w4_3,w4_4);

endmodule 




// Stimulus Module/Block to verify the N bit adder module... 
`timescale 1ns/1ps
`include "n_bit_adder.v"

module nBitAdder_tb;
 
 parameter nbit = 8;
 output reg [nbit-1:0] a_sig;
 output reg [nbit-1:0] b_sig;
 output reg Cin_sig;
 input [nbit:0] res_sig;

 nBitAdder nA0(.cout(res_sig[nbit]),.sum(res_sig[nbit-1:0]),.a(a_sig),.b(b_sig),.cin(Cin_sig));

 defparam nA0.N = nbit; 

 initial
 begin
	 a_sig <= 8'd10;
	 b_sig <= 8'd0;
	 Cin_sig <= 0;
	 #35 $finish;
 end

 initial
 begin
	 #5 b_sig <= 8'd10;
	 #10 b_sig <= 8'd20;
	 #15 b_sig <= 8'd30;
	 #20 b_sig <= 8'd40;
	 #25 b_sig <= 8'd50;
	 #30 b_sig <= 8'd60;
 end 

 initial 
 begin
	 $monitor("Time: %g ---> %h + %h = %h",$time,a_sig,b_sig,res_sig);
 end

endmodule


	 


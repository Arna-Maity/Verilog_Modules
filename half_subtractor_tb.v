// This Testbench tests the half subtractor module...

`include "half_subtractor.v"

module half_sub_tb;

 input diff_sig,bor_sig;
 output reg A_sig,B_sig;

 half_subtract HS(.A(A_sig),.B(B_sig),.D(diff_sig),.Bo(bor_sig));   //Instantiating the Half Subtractor Module....

 initial 
 begin
	 A_sig = 1'b0;
	 B_sig = 1'b0;
	 
	 #5 A_sig = 1'b0;
	    B_sig = 1'b1;

	 #5 A_sig = 1'b1;
	    B_sig = 1'b0;

	 #5 A_sig = 1'b1;
	    B_sig = 1'b1;

	 #5 $finish;
 end

 initial
	 $monitor("TIME : %g A : %b B : %b D : %b Bo : %b",$time,A_sig,B_sig,diff_sig,bor_sig);

endmodule

 

 
 

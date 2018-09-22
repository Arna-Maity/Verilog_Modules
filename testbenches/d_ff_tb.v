// This Simple Testbench verifies the Functioning of the D - Flip Flop...
`include "../clock_gen.v"
`include "../d_ff.v"
`timescale 1s/1s

module D_FF_tb;

 output reg D_sig;
 wire clk_sig;
 input Q_inp;

 D_FF DFF0(.D(D_sig),.clk(clk_sig),.Q(Q_inp));    // Instantiation of the D Flip-Flop
 clock CLK0(.out(clk_sig));

 initial
 begin
 //	 clk_sig <= 1'b0;
         D_sig <= 1'b0;       
   //      #10 clk_sig <= ~clk_sig;
         #80 D_sig <= ~D_sig;              
	 $dumpfile("D_FF.vcd");
	 $dumpvars(0,D_FF_tb);
	 #150 $finish;
 end

 //always 
 //begin
	
	
 //end

 initial
	$monitor(" Sim. Time: %g D : %b, clk : %b, Q : %b.",$time,D_sig,clk_sig,Q_inp); 

endmodule

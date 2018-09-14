// A simple Testbench to verify the Clock Generator...

`include "clock_gen.v"

module clock_tb;

 input out_sig;
 clock #(.period(20)) CLK0 (.out(out_sig)); 

 initial
 begin
	 $monitor("TIME : %g, CLK : %b",$time,out_sig);
	 $dumpfile("CLK.vcd");
	 $dumpvars(0,clock_tb);
	 #100 $finish;
 end
endmodule

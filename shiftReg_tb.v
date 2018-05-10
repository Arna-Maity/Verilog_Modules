// This File verifies the functioning of the n - bit Shift register...
`include "clock_gen.v"
`include "shiftReg.v"

module shift_reg_tb;

 output clk_sig,Din_sig;
 input Dout_sig;

 clock #(.period(10)) CLK0(clk_sig); 
 clock #(.period(20)) D_SIG(Din_sig);
 shiftReg #(.N(4)) SR0(.Din(Din_sig),.clk(clk_sig),.Dout(Dout_sig));

 initial
 begin
	 $dumpfile("ShiftReg.vcd");
	 $dumpvars(0,shift_reg_tb);
	 #100 $finish;
 end

endmodule    	

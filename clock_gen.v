// A simple Clock Generator Module ....

module clock #(parameter period = 10) 
	(output out);

 reg out;
 initial
	 out = 1'b0;
 always
 begin
	 #period out = ~out;
 end
endmodule


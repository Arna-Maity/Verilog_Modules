// This File implements a  2:1 Multiplexer using behavioral approach...

module mux2to1 (
	input in0,in1,sel0,
	output f);
reg f;
 always @(*)
 begin
	 if(sel0)
		 f = in1;
	 else
		 f = in0;
 end
endmodule

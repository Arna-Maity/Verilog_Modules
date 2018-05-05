//This file implements a RAM module....

module ram_3 (
	output data_out,
	input data_in,
	input addr,
	input wr,
	input cs);

 parameter addr_size = 10, word_size = 8, memory_size = 1024;
 reg [addr_size-1:0] addr;
 reg [word_size-1:0] data_in;
 reg wr,cs;

 wire [word_size-1:0] data_out;
 reg [word_size-1:0] mem [memory_size-1:0];

 assign data_out = mem[addr];

 always @(wr or cs)
 begin
	 if(wr)
		 mem[addr] = data_in;
 end
endmodule


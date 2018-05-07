//This file implements a RAM module....

module ram_3 (
	output [7:0] data_out,
	input [7:0] data_in,
	input [9:0] addr,
	input wr,
	input cs);

 parameter addr_size = 10, word_size = 8, memory_size = 1024;
 //input reg [addr_size-1:0] addr;
 //input reg [word_size-1:0] data_in;
 //input reg wr,cs;

 //wire [word_size-1:0] data_out;
 reg [word_size-1:0] mem [memory_size-1:0];

 assign data_out = mem[addr];

 always @(wr or cs)
 begin
	 if(wr)
		 mem[addr] = data_in;
 end
endmodule


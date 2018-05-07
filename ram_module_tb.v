
// This File implements a testbench for verifying the RAM Module...

`include "ram_module.v"
`timescale 1ns/1ps                          // Simulation Time Units / Precision...

module ram_3_tb;
 output reg [9:0] addr_sel;
 output reg [7:0] data;
 input [7:0] mod_output;
 output reg wr_sel,cs_inp;
 wire [7:0] inter;
// integer i;

 ram_3 RAM0(.data_out(mod_output),.addr(addr_sel),.wr(wr_sel),.cs(cs_inp),.data_in(data));
 assign inter = RAM0.mem[addr_sel];
 initial
 begin
	 cs_inp = 1'b1;
	 wr_sel = 1'b1;
        addr_sel = 32;
	data = 8'hFF;   
	addr_sel = 64; 
       	data = 8'hAC; 
	addr_sel = 128;
       	data = 8'h9B; 
	addr_sel = 256;
	data = 8'h8F;
	addr_sel = 512;	 $dumpfile("ram.vcd");
   	data = 8'h7F;	 $dumpvars(0,ram_3_tb);
 end

 initial
 begin
       #10 addr_sel = 32;
       #10 addr_sel = 64;
       #10 addr_sel = 128;
       #10 addr_sel = 256;
       #10 addr_sel = 512;
       #60 $finish;
 end
 
 initial
 begin
	 $monitor(" addr = %d ram[addr] = %h",addr_sel,inter);
 end

endmodule

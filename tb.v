//`timescale 1ns/1ps                // Defines Simulation Time Units and Precision...


module Full_Adder(
	output C_out,sum,
	input C_in,A,B);

assign sum = C_in ^ A ^ B;
assign C_out =( C_in & (A ^ B))|(A&B);
endmodule


// Behavioral Approach...

module nBitAdder(
 // parameter N = 8,
   Cout,
   Sum,
   a,
   b,
   Cin);

 
 parameter N = 8;
 output Cout;
 output [N-1:0] Sum;
 input [N-1:0] a;
 input [N-1:0] b;
 input Cin; 

 assign {Cout,Sum} = a + b + Cin;
endmodule

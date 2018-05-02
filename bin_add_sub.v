// iverilog --> Icarus Verilog (An Open Source Verilog Simulator)
// GTKwave  --> An Open Source .vcd waveform viewer
// Basic Verilog Language Constructs....
//
// 1. primitive ------ endprimitive (UDP -> User Defined Primitives)
// 2. generate ------- endgenerate
// 3. module --------- endmodule
// 4. table ---------- endtable
// 5. case ----------- endcase
// 6. genvar
// 7. defparam
// 8. parameter
// 
// Basic System Tasks.....
// 1. $monitor()
// 2. $display()
// 3. $dumpfile()   -------> generate a .vcd(value change dump) file 
// 4. $dumpvars()   -------> variables to dumped in *.vcd file
// 5. $finish
// 6. $time         -------> display simulation time.

// Preprocessor Directives...
// 1. `include ---> *.v files.
// 2. `timescale ---> To set simulation time units and precision.

// Operators in verilog...
// 1. Reduction Operators (&,~&,~|,|,~^,^)   -----> unary operators.
// 2. Shift Operators
//    a> bitwise left shift operator (<<)    -----> binary operators.
//    b> bitwise right shift operator (>>)
//    c> arithmetic right shift operator (>>>)
// 3. Conditional Operator
//    (cond_expr?expr1:expr2)            ----> ternary operator.
//

//  Procedural Blocks in Verilog...
//  1. always @(sensitivity list)  begin ..... end
//  2. initial begin ..... end (mainly used in testbenches)

// Dataflow Modelling....
// 1. continous assignment statement.


// 2 Portions of a complex digital system...
//1. Datapath (consists of the major functional blocks with interconnect)
//2. Control Path (Is A Finite State Machine (FSM) which generates control
//   signals for the Datapath)

// Synthesizable verilog Contructs....

// The Logic System of Verilog consists of 4 values:
// 1. 1 - HIGH
// 2. 0 - LOW
// 3. X - FLOAT
// 4. z - HI-Z (HIGH IMPEDANCE)
//Illustration of Shift Operators...

module shift_operator();
initial 
 begin
  $display(" BITWISE LEFT SHIFT OPERATORS ");	 
  $display("4'b1010 << 1: %b %d",(4'b1010<<1),(4'b1010<<1));
  $display("4'hA << 1: %b %d",(4'hA << 1),(4'hA << 1));
  $display("8'h7A : %d 8'h7A << 1 : %d",(8'h7A),(8'h7A<<1));

  $display(" BITWISE RIGHT SHIFT OPERATORS ");
  //$display()


  $display(" ARITHMETIC RIGHT SHIFT OPERATORS ");
  $display("4'hA >>> 1: %d 4'h5 >>> 1: %d",(4'hA >>> 1),(4'h5 >>> 1));
 end
endmodule


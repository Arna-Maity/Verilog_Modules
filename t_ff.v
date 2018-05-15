// This File implements a T - Flip Flop ...

`include "JK_FF.v"

module T_FF(output Q,
            output Q_b,
            input T,
            input clk);
   wire w;
   assign w = T;
   jk_ff TF(.J(w),.K(w),.clk(clk),.Q(Q),.Q_b(Q_b));

endmodule 

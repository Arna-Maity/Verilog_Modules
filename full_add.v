`include "myfunc.v"
//This file implements a Full Adder using Functions...

module fulladd (s,cout,a,b,cin);
 input a, b, cin;
 output s, cout;

 assign s = sum(a,b,cin);
 assign cout = carry(a,b,cin);

function sum;
     input x,y,z;
       begin
        sum = x ^ y ^ z;
       end
endfunction;

function carry;
     input x,y,z;
       begin
	carry = (x&y)|(y&z)|(z&x);
       end
endfunction;
endmodule

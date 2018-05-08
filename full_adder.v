// Implementation of a Full Adder ...

module full_add(
       input a_sig,
       input b_sig,
       input cin_sig,
       output sum_sig,
       output cout_sig);

 assign sum_sig = a_sig ^ b_sig ^ cin_sig; 
 assign cout_sig = (a_sig&b_sig) | (cin_sig&(a_sig ^ b_sig));

endmodule

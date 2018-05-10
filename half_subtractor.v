// This File implements a half - subtractor module...

module half_subtract(
	input A,                                        // Port List
	input B,                                        // Port Delclarations...
	output D,
	output Bo);

 xor(D,A,B);
 wire w;
 not(w,A);
 and(Bo,w,B);
endmodule 

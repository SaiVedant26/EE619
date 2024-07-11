`include "jkb.v"
module count(clk,reset,A);

input clk,reset;
output [3:0]A;
wire [3:0]B;
not(B[0],A[0]);
not(B[1],A[1]);
not(B[2],A[2]);
not(B[3],A[3]);


jk u0(1'b1,1'b1,clk,reset,A[0],B[0]);
jk u1(A[0],A[0],clk,reset,A[1],B[1]);
jk u2(A[0]&A[1],A[0]&A[1],clk,reset,A[2],B[2]);
jk u3(A[0]&A[1]&A[2],A[0]&A[1]&A[2],clk,reset,A[3],B[3]);

endmodule
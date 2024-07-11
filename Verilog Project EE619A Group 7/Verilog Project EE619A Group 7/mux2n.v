`include "mux2s.v"
module mux4(out,A,S);

input [3:0]A;
input [1:0]S;
output out;
wire [1:0]w1;


mux2 u0(w1[0],A[1:0],S[0]);
mux2 u1(w1[1],A[3:2],S[0]);
mux2 u2(out,w1,S[1]);
endmodule

module mux8(out,A,S);

input [7:0]A;
input [2:0]S;
output out;
wire [1:0]w1;


mux4 u3(w1[0],A[3:0],S[1:0]);
mux4 u4(w1[1],A[7:4],S[1:0]);
mux2 u5(out,w1,S[2]);

endmodule

module mux16(out,A,S);

input [15:0]A;
input [3:0]S;
output out;
wire [1:0]w1;


mux8 u3(w1[0],A[7:0],S[2:0]);
mux8 u4(w1[1],A[15:8],S[2:0]);
mux2 u5(out,w1,S[3]);

endmodule

module mux32(out,A,S);

input [31:0]A;
input [4:0]S;
output out;
wire [1:0]w1;


mux16 u3(w1[0],A[15:0],S[3:0]);
mux16 u4(w1[1],A[31:16],S[3:0]);
mux2 u5(out,w1,S[4]);

endmodule
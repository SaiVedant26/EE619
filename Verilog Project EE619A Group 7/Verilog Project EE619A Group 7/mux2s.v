module andg(a, b, c);
output a;
input b,c;
assign a = b & c;
endmodule

module notg(d, e);
output d;
input e;
assign d = ~ e;
endmodule

module org(l, m, n);
output l;
input m,n;
assign l = m | n;
endmodule

module mux2(out,A,S);

input [1:0]A;
input S;
output out;
wire w1,w2,w3;

notg u0(w1,S);
andg u1(w2,w1,A[1]);
andg u2(w3,S,A[0]);
org u3(out,w2,w3);

endmodule
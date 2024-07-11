`timescale 1ns/1ns
`include "mux2s.v"

module mux2s_tb;

reg [1:0]A;
reg S;
wire out;

mux2 uut(out,A,S);

initial begin
    $dumpfile("mux2s_tb.vcd");
    $dumpvars;
    $display("Results");
    A=2'd0;S=1'b0;#20;$display("A=%b\tS=%b\tout=%b",A,S,out);
    A=2'd1;S=1'b0;#20;$display("A=%b\tS=%b\tout=%b",A,S,out);
    A=2'd2;S=1'b0;#20;$display("A=%b\tS=%b\tout=%b",A,S,out);
    A=2'd3;S=1'b0;#20;$display("A=%b\tS=%b\tout=%b",A,S,out);
    A=2'd0;S=1'b1;#20;$display("A=%b\tS=%b\tout=%b",A,S,out);
    A=2'd1;S=1'b1;#20;$display("A=%b\tS=%b\tout=%b",A,S,out);
    A=2'd2;S=1'b1;#20;$display("A=%b\tS=%b\tout=%b",A,S,out);
    A=2'd3;S=1'b1;#20;$display("A=%b\tS=%b\tout=%b",A,S,out);


end

endmodule
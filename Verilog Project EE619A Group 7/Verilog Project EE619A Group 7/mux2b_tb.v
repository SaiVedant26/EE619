`timescale 1ns/1ns
`include "mux2b.v"

module mux2b_tb;

reg [1:0]A;
reg S;
wire out;

mux2b dut(out,A,S);

initial begin
    $dumpfile("mux2b_tb.vcd");
    $dumpvars;
    $display("Results");
    A=0;
    S=0;
    #100 $finish;
end
always #5 S=~S;
always #10 A=A+1;

always @(*)begin
    #1;$display("A=%b\tS=%b\tout=%b",A,S,out);

end
endmodule
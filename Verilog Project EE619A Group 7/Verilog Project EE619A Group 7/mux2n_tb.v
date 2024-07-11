`timescale 1ps/1ps
`include "mux2n.v"

module mux2n_tb;

reg [31:0]A;
reg [4:0]S;
wire out;
wire [1:0]w1;
integer i;
reg F;

mux32 uut(out,A,S);

initial begin
    $dumpfile("mux2n_tb.vcd");
    $dumpvars;
    $display("Results");

    A=32'b10000000000000000000000000000001;

    for(i=0;i<=31;i++)begin
        S=i;
        F=(~S[4] & ~S[3] & ~S[2] & ~S[1] & ~S[0]) | (S[4] & S[3] & S[2] & S[1] & S[0]);
        #20;
        $display("A=%b\tS=%b\tout=%b\tF=%b",A,S,out,F); 
    end


end

endmodule
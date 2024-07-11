`timescale 1ns/1ns
`include "jkb.v"
module jkb_tb;
reg clk,reset,j,k;
wire q,qbar;

  jk dut(j,k,clk,reset,q,qbar);
  
  initial begin 
  clk=0;
  forever #5 clk=~clk;
  end
  
  initial 
    begin
    $dumpfile("jkb_tb.vcd");
    $dumpvars;
     reset=1;
     #10;
    $display("j=%b\tk=%b\tq=%b\tqbar=%b",j,k,q,qbar);
     reset=0;
     #10;
$display("j=%b\tk=%b\tq=%b\tqbar=%b",j,k,q,qbar);
     j = 1'b0;
     k = 1'b0;     
     #10;
    $display("j=%b\tk=%b\tq=%b\tqbar=%b",j,k,q,qbar);
     j = 1'b0;
     k = 1'b1;     
     #10;
     $display("j=%b\tk=%b\tq=%b\tqbar=%b",j,k,q,qbar);
     j = 1'b1;
     k = 1'b0;     
     #10;
     $display("j=%b\tk=%b\tq=%b\tqbar=%b",j,k,q,qbar);
     j = 1'b1;
     k = 1'b1;
     #10;
  $display("j=%b\tk=%b\tq=%b\tqbar=%b",j,k,q,qbar);
     $finish;
    end 
endmodule
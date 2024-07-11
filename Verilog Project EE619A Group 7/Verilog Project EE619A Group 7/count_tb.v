`timescale 1ns/1ns
`include "count.v"

module count_tb;  
  reg clk;                       
  reg reset;                      
  wire [3:0] A;                
  integer i;
  
  count   dut ( .clk (clk),.reset (reset),.A (A));  
  
    
   
initial begin 
  clk=0;
  forever #5 clk=~clk;
  end 
  
  initial begin 
    $dumpfile("count_tb.vcd");
    $dumpvars;  
    reset = 1;
    #10;
    $display("%b\t%b\t%b\t%b",A[3],A[2],A[1],A[0]);
    reset =0;
    for(i=0;i<=30;i++)
    begin
        #10;
        $display("%b\t%b\t%b\t%b",A[3],A[2],A[1],A[0]);    
    end
    $finish;  
  end  
endmodule  
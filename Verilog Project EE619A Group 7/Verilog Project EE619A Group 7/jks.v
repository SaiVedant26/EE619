module jks(j,k,clk,reset,q,qbar);

input j,k,clk,reset;
output reg q,qbar;

wire w1,w2;

always@(posedge clk)
begin
    if({reset})
        {q,qbar}<={1'b0,1'b1};
    else
        begin
            nand(w1,j,clk,qbar);
            nand(w2, k,clk,q);
            nand(q,qbar,w1);
            nand(qbar,q,w2);
        end
end
endmodule
module mux2b(out,A,S);

input wire [1:0]A;
input wire S;
output reg out;

always @(*) begin
    case (S)
        1'b0:out=A[1];
        1'b1:out=A[0]; 
        default: $display("Wrong");
    endcase
end

endmodule
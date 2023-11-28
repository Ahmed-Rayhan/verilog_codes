module test_nafiz1(T, clk, Q);
input T, clk;
output reg Q;

always@(posedge clk)
Q=((~Q)&T)|(Q&(~T));
endmodule 
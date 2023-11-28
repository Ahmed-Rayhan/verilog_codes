module JK_usingD(J, K, clk, Q);
input J, K, clk;
output reg Q;

always@(posedge clk)
Q<=(J&(~Q))|((~K)&Q);

endmodule 
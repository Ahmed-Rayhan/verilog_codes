module TFF_D(T, clk, Q);
input T, clk;
output reg Q;

always@(posedge clk)
Q<= (T&(~Q))|((~T)&Q);

endmodule 
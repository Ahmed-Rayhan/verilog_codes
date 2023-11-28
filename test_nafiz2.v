module test_nafiz2(a,b,c, clk, y1, y2);
input a, b, c, clk;
output reg y1, y2;
reg w1;

always@(negedge clk)
w1=a^b^c;
always@(negedge clk)
y1=b&c;
always@(negedge clk)
y2=w1|y1;
endmodule 
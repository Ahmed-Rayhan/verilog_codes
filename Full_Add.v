module Full_Add(X, Y, Z, C, S);
input X, Y, Z;
output C, S;
wire c1, c2, s1;
HA f1(X,Y,c1, s1);
HA f2(s1,Z,c2, S);
assign C=c1|c2;
endmodule 


module HA(x,y,c,s);
input x,y;
output c,s;
assign c=x&y;
assign s=x^y;

endmodule
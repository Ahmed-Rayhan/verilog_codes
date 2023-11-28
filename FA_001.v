module FA_001(A,B,C,Cout,S); 
input A,B,C; 
output Cout,S; 
wire C1,C2,S1; v
HA_001 f1(A, B, C1, S1); 
HA_001 f2(S1, C, C2, S); 
assign Cout = C1|C2; 
endmodule
module HA_001(a,b,c,s);
input a,b; 
output c,s; 
assign c = a&b; 
assign s = a^b; 
endmodule

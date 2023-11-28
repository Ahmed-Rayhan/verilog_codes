module fulladder_rn(a0,a1,a2,a3, b0,b1,b2,b3, cin, s0, s1, s2, s3, cout);
input a0,a1,a2,a3, b0,b1,b2,b3, cin;
output s0, s1, s2, s3, cout;
wire c1, c2, c3;
FA f1(a0, b0, cin, s0, c1);
FA f2(a1, b1, c1, s1, c2);
FA f3(a2, b2, c2, s2, c3);
FA f4(a3, b3, c3, s3, cout);
endmodule

module FA(A,B, CIN, SUM, COUT);
input A,B,CIN;
output SUM, COUT;
assign SUM=A^B^CIN;
assign COUT= (A&B)|(B&CIN)|(CIN & A);
endmodule 
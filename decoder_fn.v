module decoder_fn(E, A, D);
input E,A;
output D;
assign D=E|A;
/*input [1:0]A;
output reg [3:0]D;

always@(*)
begin
if (E==1)
case(A)
2'b00: D=4'b0001;
2'b01: D=4'b0010;
2'b10: D=4'b0100;
2'b11: D=4'b1000;

default:
D=4'b0000;
endcase

else D=4'b1000;

end*/
endmodule


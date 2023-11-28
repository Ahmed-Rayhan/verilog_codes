module adder_sub(a,b,cnt, y, cout);

input [3:0]a, b;
input cnt;
output reg[3:0]y;
output reg cout;
always@(*)
begin
if(cnt==1)
begin
{cout, y}=a+b;
end
else 
begin
{cout, y}=a-b;
end
end
endmodule 
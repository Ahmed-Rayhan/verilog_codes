module eightALU(a, b, opcode, out);
input [3:0]a,b;
input [2:0]opcode;
output reg [3:0]out;

always@*
begin
if(opcode==000)
out=a+b;
else if(opcode==001)
out=a-b;
else if(opcode==010)
out=a*b;
else if(opcode==011)
out=a&b;
else if(opcode==100)
out=a|b;
else if(opcode==101)
out=~(a&b);
else if(opcode==110)
out=~(a|b);
else if(opcode==111)
out=a^b;
end
endmodule 
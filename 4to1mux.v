module 4to1mux(S, I, Y);
input [1:0]S;
input [3:0]I;
output reg Y;

always@(*)
	begin
		if(S==0)
			Y=I[0];
		else if(S==1)
			Y=I[1];
		else if(S==2)
			Y=I[2];
		else if(S==3)
			Y=I[3];
		end
		
endmodule 
		
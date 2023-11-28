module compara_ray(A, B, eq, gt, lt);
input [3:0]A, B;
output reg eq, gt, lt;

always@(*)
	begin
	if(A==B)
		begin
		eq=1'b1;
		gt=1'b0;
		lt=1'b0;
		end
	if(A>B)
		begin
		eq=1'b0;
		gt=1'b1;
		lt=1'b0;
		end
	if(A<B)
		begin
		eq=1'b0;
		gt=1'b0;
		lt=1'b1;
		end
end
endmodule
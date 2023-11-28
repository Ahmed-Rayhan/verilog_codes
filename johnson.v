module johnson(clk, reset, count);
    input clk;
    input reset;
    output reg [3:0] count;
    
    
    always @(posedge clk or posedge reset)
        if(reset)
            count <= 4'h0;
            
        else if(count == 4'h2)  count   <=  4'h0;
        else if(count == 4'h4)  count   <=  4'h0;
        else if(count == 4'h5)  count   <=  4'h0;
        else if(count == 4'h6)  count   <=  4'h0;
        else if(count == 4'h9)  count   <=  4'h0;
        else if(count == 4'ha)  count   <=  4'h0;
        else if(count == 4'hb)  count   <=  4'h0;
        else if(count == 4'hd)  count   <=  4'h0;
        
        else begin
            count[3:1]  <=  count[2:0];
            count[0]    <=  ~count[3];
        end
    
endmodule
module counter(
    input wire clk,
    input wire [1:0] select,
    output reg [3:0] count
);

// D flip-flops for storing the count value
reg [3:0] count_reg;

// Next state logic based on the selection input
always @ (posedge clk) begin
    case (select)
        2'b00: count_reg <= count_reg; // No change if select is 00
        2'b01: count_reg <= (count_reg == 4'd3) ? 4'd0 : count_reg + 1; // Increment count to 3 if select is 01
        2'b10: count_reg <= (count_reg == 4'd7) ? 4'd0 : count_reg + 1; // Increment count to 7 if select is 10
        2'b11: count_reg <= (count_reg == 4'd15) ? 4'd0 : count_reg + 1; // Increment count to 15 if select is 11
        default: count_reg <= count_reg; // Default behavior is to maintain the current count
    endcase
end

// Output the count value
assign count = count_reg;

endmodule
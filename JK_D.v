/*module JK_D(J,K,CLK,Q,Q_bar);
input  J, K,CLK;
  output reg Q;
  output Q_bar;

  always @(posedge CLK) begin
    if (J && !K)
      Q <= 1'b1;
    else if (!J && K)
      Q <= 1'b0;
    else if (J && K)
      Q <= ~Q;
  end

  assign Q_bar = ~Q;

endmodule */
module JK_D(J,K,CLK,Q,Q_bar);
input  J, K,CLK;
  output reg Q;
  output Q_bar;
  
  always @(posedge clock) begin
    if (J && ~K) begin
      Q <= ~Q;
      Qn <= ~Q;
    end else if (~J && K) begin
      Q <= ~Q;
      Qn <= ~Q;
    end else if (J && K) begin

    end else begin

    end
  end

endmodule

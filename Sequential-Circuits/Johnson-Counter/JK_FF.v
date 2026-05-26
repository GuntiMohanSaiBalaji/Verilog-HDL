module jk_ff (clk,reset,J,K,q);

input clk,reset,J,K;
output reg q;

always @(posedge clk) begin
    if (reset)
        q <= 1'b0;
    else begin
        case ({J, K})
            2'b00: q <= q;        // Hold
            2'b01: q <= 1'b0;     // Reset
            2'b10: q <= 1'b1;     // Set
            2'b11: q <= ~q;       // Toggle
        endcase
    end
end


endmodule
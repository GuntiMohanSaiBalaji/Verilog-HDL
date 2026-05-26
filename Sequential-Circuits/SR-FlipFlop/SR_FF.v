module sr_ff (clk,reset,S,R,q);
input clk,reset,S,R;
output reg q;
always @(posedge clk)
 begin
    if (reset)
        q <= 1'b0;
    else begin
        case ({S, R})
            2'b00: q <= q;      // Hold
            2'b01: q <= 1'b0;   // Reset
            2'b10: q <= 1'b1;   // Set
            2'b11: q <= 1'bx;   // Invalid
        endcase
    end
end

endmodule
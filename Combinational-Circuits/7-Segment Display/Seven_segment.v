module Seven_segment(Data,Seg);
    input [3:0]Data;
    output reg [6:0]Seg;  //seg={a,b,c,d,e,f,g}
    always @(*)
        begin
            case(Data)
            4'h0:Seg=7'b1111110;
            4'h1:Seg=7'b0110000;
            4'h2:Seg=7'b1101101;
            4'h3:Seg=7'b1111001;
            4'h4:Seg=7'b0110011;
            4'h5:Seg=7'b1011011;
            4'h6:Seg=7'b1011111;
            4'h7:Seg=7'b1110000;
            4'h8:Seg=7'b1111111;
            4'h9:Seg=7'b1111011;
            4'hA:Seg=7'b1110111;
            4'hB:Seg=7'b0011111;
            4'hC:Seg=7'b1001110;
            4'hD:Seg=7'b0111101;
            4'hE:Seg=7'b1001111;
            4'hF:Seg=7'b1000111;
            default:Seg=7'b0000000;
            endcase
         end
endmodule
            
            
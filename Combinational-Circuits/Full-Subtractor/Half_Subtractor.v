module Half_Sub(a,b,dif,bout);
  input a,b;
  output reg dif,bout;
  always @(*)
    begin 
      dif=a^b; //A^B
      bout=~a&b; //A'B
    end
endmodule
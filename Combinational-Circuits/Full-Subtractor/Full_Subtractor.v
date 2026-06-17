module Full_Sub(a,b,bin,dif,bout);
  input a,b,bin;
  output reg dif,bout;
  always @(a or b or bin)
    begin 
      dif=a^b^bin;
      bout=(~a&b)|bin&(a^~b);
    end
endmodule
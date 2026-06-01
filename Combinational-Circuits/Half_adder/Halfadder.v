module halfadder(a,b,s,c);
  
  /*Behavioral Modeling
  input a,b;				
  output reg s,c;
  always @(a or b)
    begin
      s=a^b;
      c=a&b;
    end*/
  
  /*Data-Flow Modeling
  input a,b;			  
  output s,c;
  assign s=a^b;
  assign c=a&b;*/
  
  //Gate-level Modeling
  input a,b;			  
  output s,c;
  xor x1(s,a,b);
  and a1(c,a,b);  
endmodule
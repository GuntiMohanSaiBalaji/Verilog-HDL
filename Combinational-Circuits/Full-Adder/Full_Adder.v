module fulladder(a,b,cin,s,cout);
  input a,b,cin;
  output reg s,cout;
  always @(a or b or cin)
    begin
      s=a^b^cin;
      cout=(a&b)|cin&(a^b); //cin(a^b)+ab
    end
endmodule
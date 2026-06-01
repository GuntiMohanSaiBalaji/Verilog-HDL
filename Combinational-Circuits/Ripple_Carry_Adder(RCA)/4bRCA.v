module fulladder(a,b,cin,s,cout);
  input a,b,cin;
  output reg s,cout;
  always @(a or b or cin)
    begin
      s=a^b^cin;
      cout=(a&b)|cin&(a^b);
    end
endmodule

module _4bRCA(A,B,Cin,S,Cout);
  input [3:0]A,B;
  input Cin;
  output [3:0]S;
  output Cout;
  wire c1,c2,c3;
  fulladder FA0(A[0],B[0],Cin,S[0],c1);
  fulladder FA1(A[1],B[1],c1,S[1],c2);
  fulladder FA2(A[2],B[2],c2,S[2],c3);
  fulladder FA3(A[3],B[3],c3,S[3],Cout);
endmodule
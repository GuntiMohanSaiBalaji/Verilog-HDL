module mux4x1(a,b,c,d,s0,s1,y);
  input [2:0]a,b,c,d;
  input s0,s1;
  output [2:0]y;
  assign y=s0?(s1?d:c):(s1?b:a);
endmodule
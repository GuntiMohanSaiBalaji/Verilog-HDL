module fulladder_tb();
  reg a,b,cin;
  wire s,cout;
  fulladder uut(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
  initial 
    begin 
      $monitor($time," A=%b B=%b Cin=%b SUM=%b Cout=%b ",a,b,cin,s,cout);
      $dumpfile("dump.vcd");
      $dumpvars(0,fulladder_tb);
      a=0;b=0;cin=0; #2;
      a=0;b=0;cin=1; #2;
      a=0;b=1;cin=0; #2;
      a=0;b=1;cin=1; #2;
      a=1;b=0;cin=0; #2;
      a=1;b=0;cin=1; #2;
      a=1;b=1;cin=0; #2;
      a=1;b=1;cin=1; #2;
      $finish;
    end
endmodule
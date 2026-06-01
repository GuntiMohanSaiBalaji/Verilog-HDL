module _4bRCA_tb();
  reg [3:0]A,B;
  reg Cin;
  wire [3:0]S;
  wire Cout;
  _4bRCA uut(A,B,Cin,S,Cout);
  initial 
    begin 
      $monitor($time," A=%b B=%b Cin=%b SUM=%b Cout=%b ",A,B,Cin,S,Cout);
      $dumpfile("dump.vcd");
      $dumpvars(0,_4bRCA_tb);
      A=4'b1100;B=4'b0110;Cin=0; #2;
      A=4'b1101;B=4'b1010;Cin=1; #2;
      A=4'b0101;B=4'b1101;Cin=1; #2;
      A=4'b0110;B=4'b0010;Cin=0; #2;
     
      #2 $finish;
    end
endmodule
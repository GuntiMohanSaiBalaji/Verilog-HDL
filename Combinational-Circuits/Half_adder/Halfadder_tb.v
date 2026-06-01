module halfadder_tb();
  reg a,b;
  wire s,c;
  halfadder uut(.a(a),.b(b),.s(s),.c(c));
  initial 
    begin 
      $monitor($time," A = %b B = %b S = %b C = %b",a,b,s,c);
      $dumpfile("dump.vcd");
      $dumpvars(0,halfadder_tb);
      a=0;b=0; #2;
      a=0;b=1; #2;
      a=1;b=0; #2;
      a=1;b=1; #2;
   
      
      #2 $finish;
      
    end
endmodule
  
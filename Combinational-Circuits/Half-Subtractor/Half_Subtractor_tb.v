module Half_Sub_tb();
  reg a,b;
  wire dif,bout;
  Half_Sub uut(.a(a),.b(b),.dif(dif),.bout(bout));
  initial 
    begin
      $monitor($time," A=%b B=%b D=%b Bo=%b ",a,b,dif,bout);
      $dumpfile("dump.vcd");
      $dumpvars(0,Half_Sub_tb);
      a=0;b=0; #2;
      a=0;b=1; #2;
      a=1;b=0; #2;
      a=1;b=1; #2;
      $finish;
    end
endmodule
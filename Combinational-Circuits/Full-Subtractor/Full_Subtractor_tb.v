module Full_Sub_tb();
  reg a,b,bin;
  wire dif,bout;
  Full_Sub uut(.a(a),.b(b),.bin(bin),.dif(dif),.bout(bout));
  initial 
    begin
      $monitor($time," A=%b B=%b Bin=%b D=%b Bo=%b ",a,b,bin,dif,bout);
      $dumpfile("dump.vcd");
      $dumpvars(0,Full_Sub_tb);
      a=0;b=0;bin=0; #2;
      a=0;b=0;bin=1; #2;
      a=0;b=1;bin=0; #2;
      a=0;b=1;bin=1; #2;
      a=1;b=0;bin=0; #2;
      a=1;b=0;bin=1; #2;
      a=1;b=1;bin=0; #2;
      a=1;b=1;bin=1; #2;
      $finish;
    end
endmodule
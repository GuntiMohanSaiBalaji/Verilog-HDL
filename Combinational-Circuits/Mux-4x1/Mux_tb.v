module mux4x1_tb();
  reg [2:0]a,b,c,d;
  reg s0,s1;
  wire [2:0]y;
  mux4x1 uut(.a(a),.b(b),.c(c),.d(d),.s0(s0),.s1(s1),.y(y)); 
  initial 
    begin  
    $monitor("simutime=%g a=%b b=%b c=%b d=%b S0=%b S1=%b y=%b",$time,a,b,c,d,s0,s1,y);
    $dumpfile("dump.vcd");
    $dumpvars(0,mux4x1_tb);
    a=3'b001;b=3'b110;c=3'b111;d=3'b010;
    s0=0;s1=0;#2;
    s0=0;s1=1;#2;
    s0=1;s1=0;#2;
    s0=1;s1=1;#2;
    $finish;
  end
endmodule
module sr_ff_tb();
  reg clk, reset, S, R;
  wire q;

  sr_ff uut(.clk(clk),.reset(reset),.S(S),.R(R),.q(q));

  always #1 clk = ~clk;

  initial begin
    $monitor($time," clk=%b S=%b R=%b Q=%b", clk, S, R, q);
    $dumpfile("dump.vcd");
    $dumpvars(0,sr_ff_tb);

    clk=0; reset=1; S=0; R=0; #2;
    reset=0;
    S=0; R=0; #2;   
    S=0; R=1; #2;            
    S=1; R=0; #2;            
    S=1; R=1; #2;            

    #2 $finish;
  end
endmodule
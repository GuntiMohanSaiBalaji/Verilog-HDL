module jk_ff_tb();
  reg clk, reset, J, K;
  wire q;

  jk_ff uut(clk, reset, J, K, q);

  always #1 clk = ~clk;

  initial begin
    $monitor($time," clk=%b J=%b K=%b Q=%b", clk, J, K, q);
    $dumpfile("dump.vcd");
    $dumpvars(0,jk_ff_tb);

    clk=0; reset=1; J=0; K=0; #2;
    reset=0; 
    J=0; K=0; #2;   // Hold
    J=0; K=1; #2;  // Reset
    J=1; K=0; #2;  // Set         
    J=1; K=1; #2;  // Toggle
               

    #2 $finish;
  end
endmodule
module encoder8x3_tb();
  reg [7:0]D;
  wire [2:0]Y;
  encoder8x3 uut(.D(D),.Y(Y));
  initial begin
    $monitor("simutime=%g\tD=%b Y=%b",$time,D,Y);
    $dumpfile("Dump.vcd");
    $dumpvars(0,encoder8x3_tb);
    D=8'b0000_0001;#2;
    D=8'b1000_0000;#2;
    D=8'b0010_0000;#2;
    D=8'b0000_1000;#2;
    #2 $finish;
  end
endmodule    
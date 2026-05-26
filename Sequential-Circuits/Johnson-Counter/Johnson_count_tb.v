module Johnson_count_tb();
    reg rst,clk;
    wire [3:0]q;
    Johnson_counter uut(.clk(clk),.rst(rst),.q(q));
    always #1 clk=~clk;
    initial 
        begin
    $monitor($time,"clk=%b rst=%b q=%b",clk,rst,q);
    $dumpfile("dump.vcd");
    $dumpvars(0,Johnson_count_tb);
    rst=1;clk=0; #2;
    rst=0;
     #26 $finish;
     end
     endmodule   
    
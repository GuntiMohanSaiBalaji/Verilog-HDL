module Seven_segment_tb();
    wire [6:0]seg;
    reg [3:0]data;
    integer i;
    Seven_segment uut(.Data(data),.Seg(seg));    
    initial 
        begin
    $monitor("%g Data=%h Segment_Value=%b",$time,data,seg);
    $dumpfile("Dump.vcd");
    $dumpvars(0,Seven_segment_tb);
    for (i=0;i<16;i=i+1)
        begin
            data=i;
            #1;
        end
    /* below is equivalent to the logic
    data=4'h0;
    #1 data=4'h1;
    #1 data=4'h2;
    #1 data=4'h3;
    #1 data=4'h4;
    #1 data=4'h5;
    #1 data=4'h6;
    #1 data=4'h7;
    #1 data=4'h8;
    #1 data=4'h9;
    #1 data=4'hA;
    #1 data=4'hB;
    #1 data=4'hC;
    #1 data=4'hD;
    #1 data=4'hE;
    #1 data=4'hF;*/
    #1 $finish;
    end
    
endmodule
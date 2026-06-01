module Even_parity_tb();
    reg A,B,C,D;
    wire P;
    Even_parity uut (.A(A),.B(B),.C(C),.D(D),.P(P));
    initial begin
    $monitor ("Simutime=%g A=%b B=%b C=%b D=%b P=%b",$time,A,B,C,D,P);
    $dumpfile("dump.vcd");
    $dumpvars(0,Even_parity_tb);
    
    A=1'b1;B=1'b1;C=1'b1;D=1'b1;#2
    A=1'b1;B=1'b0;C=1'b1;D=1'b0;#2 
    A=1'b0;B=1'b1;C=1'b0;D=1'b0;#2
    A=1'b1;B=1'b0;C=1'b1;D=1'b1;#2
    A=1'b0;B=1'b0;C=1'b0;D=1'b0;#2
    A=1'b0;B=1'b0;C=1'b0;D=1'b1;#2
    
    $finish;
    end
    endmodule
    
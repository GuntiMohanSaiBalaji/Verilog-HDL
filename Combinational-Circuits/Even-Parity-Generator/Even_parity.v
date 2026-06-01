module Even_parity(A,B,C,D,P);

input A,B,C,D;
output P;

assign P=A^B^C^D;

endmodule
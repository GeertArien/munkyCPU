`timescale 1ns / 100ps

module full_adder(
    input A,
    input B,
    input Ci,
    output Sum,
    output Cout
    );

  wire P,G,H;
  half_adder  ha1(A,B,P,G);
  half_adder  ha2(P,Ci,Sum,H);
  or #5 (Cout,G,H);

endmodule



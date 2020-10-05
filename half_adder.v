`timescale 1ns / 100ps

module half_adder(A, B, Sum, Carry);
  input A, B;		// two 1 bit inputs
  output Sum, Carry;	// two 1 bit outputs
  
  assign Sum = A ^ B;
  assign Carry = A & B;
endmodule


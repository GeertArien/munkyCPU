`timescale 1ns/100ps

module RISCVALUTB();
	reg [3:0]	ALUctl;
  reg [63:0] A;
  reg [63:0] B;
	wire [63:0] ALUout;
	wire Zero;
  
  RISCVALU Alu(
    .ALUctl(ALUctl),
		.A(A),
		.B(B),
		.ALUout(ALUout),
		.Zero(Zero)
    );
  
  initial begin 
    $dumpfile("test.vcd"); 
    $dumpvars(1,RISCVALUTB);  
    #100  ALUctl=4'd0; A=64'd1560; B=64'd3;
    #100  A=64'd3; B=64'd1560;
    #100  ALUctl=ALUctl+1;
    #100  A=64'd1560; B=64'd3;
    #100  ALUctl=ALUctl+1;
    #100  A=64'd3; B=64'd1560;
    #100  ALUctl=ALUctl+1;
    #100  A=64'd1560; B=64'd3;
    #100  ALUctl=ALUctl+1;
    #100  A=64'd3; B=64'd1560;
    #100  ALUctl=ALUctl+1;
    #100  A=64'd1560; B=64'd3;
    #100  ALUctl=ALUctl+1;
    #100  A=64'd3; B=64'd1560;    
		#100  ALUctl=ALUctl+1;
    #100  A=64'd1560; B=64'd3;
    #100  ALUctl=ALUctl+1;
    #100  A=64'd3; B=64'd1560;
		#100  ALUctl=ALUctl+1;
    #100  A=64'd1560; B=64'd3;
    #100  ALUctl=ALUctl+1;
    #100  A=64'd3; B=64'd1560;
    #100  ALUctl=ALUctl+1;
    #100  A=64'd1560; B=64'd3;
    #100  ALUctl=ALUctl+1;
    #100  A=64'd3; B=64'd1560;
    #100  ALUctl=ALUctl+1;
    #100  A=64'd1560; B=64'd3;
    #100  ALUctl=ALUctl+1;
    #100  A=64'd3; B=64'd1560;
    #100  ALUctl=ALUctl+1;
    #100  A=64'd1560; B=64'd3;
    #100  ALUctl=ALUctl+1;
    #100  $finish;
  end
endmodule

`timescale 1ns/100ps

module Mult4to1TB();
  reg [63:0] In1;
  reg [63:0] In2;
	reg [63:0] In3;
	reg [63:0] In4;
	reg [1:0] Sel;
  wire [63:0] Out;
  
  Mult4to1 MULT(
    .In1(In1),
		.In2(In2),
		.In3(In3),
		.In4(In4),
		.Sel(Sel),
    .Out(Out)
    );
  
  initial begin 
    $dumpfile("test.vcd"); 
    $dumpvars(1,Mult4to1TB);  
    #100  In1=64'd3; In2=64'd4; In3=64'd256; In4=64'd1024;
    #100  In1=In1+1; In2=In2+1; In3=In3+1; In4=In4+1;
    #100  Sel=0;
		#100	In1=In1+1; In2=In2+1; In3=In3+1; In4=In4+1;
    #100  Sel=Sel+1;
		#100	In1=In1+1; In2=In2+1; In3=In3+1; In4=In4+1;
		#100  Sel=Sel+1;
		#100	In1=In1+1; In2=In2+1; In3=In3+1; In4=In4+1;
		#100  Sel=Sel+1;
		#100	In1=In1+1; In2=In2+1; In3=In3+1; In4=In4+1;
		#100  Sel=Sel+1;
    #100  $finish;
  end
endmodule

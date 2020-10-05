`timescale 1ns/100ps

module d_flip_flop_TB();
  reg CLK, D;
	wire Q, Qbar;
  
  d_flip_flop DL(
    .CLK(CLK),
    .D(D),
    .Q(Q),
    .Qbar(Qbar)
    );

	always #50 CLK = ~CLK;
  
  initial begin 
    $dumpfile("test.vcd"); 
    $dumpvars(1,d_flip_flop_TB);
		D=0;
		CLK=0;
    #125  D=1;
    #150  D=0;
    #150  D=1;
    #100  $finish;
  end
endmodule

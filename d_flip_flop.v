module d_flip_flop(CLK, D, Q, Qbar);
	input CLK, D;
	output Q, Qbar;
	wire not_clk, q_0, qbar_0;

	not(not_clk, CLK);
	d_latch DL_0(CLK, 			D, 		q_0, 	qbar_0);
	d_latch DL_1(not_clk, 	q_0, 	Q, 		Qbar);
endmodule

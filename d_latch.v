module d_latch(CLK, D, Q, Qbar);
	input CLK, D;
	output Q, Qbar;
	wire not_d, and_0, and_1;

	not(not_d, D);
	and(and_0, CLK, not_d);
	and(and_1, CLK, D);
	nor(Q, and_0, Qbar);
	nor(Qbar, and_1, Q);
endmodule

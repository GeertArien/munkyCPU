module RISCVALU(ALUctl, A, B, ALUout, Zero);
	input [3:0] ALUctl;
	input [63:0] A, B;
	output reg [63:0] ALUout;
	output Zero;
	
	assign Zero = (ALUout==0);	// goes anywhere

	always @(ALUctl, A, B)
		case (ALUctl)
			0: ALUout <= A & B;
			1: ALUout <= A | B;
			2: ALUout <= A + B;
			6: ALUout <= A - B;
			7: ALUout <= A < B ? 1 : 0;
			12: ALUout <= ~(A | B);			// nor
			default: ALUout <= 0;				// default to 0, should not happen
		endcase
endmodule

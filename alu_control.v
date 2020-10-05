module ALUControl(ALUop, FuncCode, ALUctl);
	input [1:0] ALUop;
	input [5:0] FuncCode;
	output reg [3:0] ALUctl;

	always 
		case (FuncCode)
			32: ALUctl <=2;		// add
			34: ALUctl <=6;		// subtract
			36: ALUctl <=0;		// and
			37: ALUctl <=1;		// or
			39: ALUctl <=12;	// nor
			42: ALUctl <=2;		// slt
			default: ALUctl<=15;	// should not happen
		endcase

endmodule

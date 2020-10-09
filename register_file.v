module register_file(Read1, Read2, WriteReg, WriteData, 
RegWrite, Data1, Data2, CLK);
	
	input [5:0] Read1, Read2, WriteReg;		// reg number
	input [63:0] WriteData;
	input RegWrite, CLK;					// write control and clock
	output [63:0] Data1, Data2;
	reg [63:0] RF [31:0];					// 32 registers of 64 bits

	assign Data1 = RF[Read1];
	assign Data2 = RF[Read2];

	always begin
		@(posedge CLK) if (RegWrite) RF[WriteReg] <= WriteData;
	end

endmodule

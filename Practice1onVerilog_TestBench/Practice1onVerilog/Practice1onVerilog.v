module Practice1onVerilog
(
	input [1:0] KEY,
	output [9:0] LEDR
);

	wire a = ~ KEY [0];
	wire b = ~ KEY [1];
	
	assign LEDR[0] = a;
	assign LEDR[1] = b;
	assign LEDR[2] = a;
	assign LEDR[3] = b;
	assign LEDR[4] = a;
	assign LEDR[5] = b;
	assign LEDR[6] = a;
	
	assign LEDR[7] = a ^ b;
	assign LEDR[8] = a & b;
	assign LEDR[9] = a | b;
endmodule
	
`timescale 1ns/100ps
module cordic_pipelined
(
	input  clk,rst,
	input  signed [15:0] z,
	output signed [15:0] x,y
);

	wire signed [15:0] x0, y0;
	wire signed [15:0] x1, y1, z1;
	wire signed [15:0] x2, y2, z2;
	wire signed [15:0] x3, y3, z3;
	wire signed [15:0] x4, y4, z4;
	wire signed [15:0] x5, y5, z5;
	wire signed [15:0] x6, y6, z6;
	wire signed [15:0] x7, y7, z7;
	wire signed [15:0] x8, y8, z8;
	wire signed [15:0] x9, y9, z9;
	wire signed [15:0] x10, y10, z10;
	wire signed [15:0] x11, y11, z11;
	wire signed [15:0] x12, y12, z12;
	wire signed [15:0] x13, y13, z13;

	assign x0 = 9949;
	assign y0 = 0;
	
	cordic_cell #(.SITA(12868),.N(0)) cell0
	(
		.clk(clk),
		.rst(rst),
		.x_in(x0),
		.y_in(y0), 
		.z_in(z),
		.x_out(x1),
		.y_out(y1),
		.z_out(z1)
	);
	
	cordic_cell #(.SITA(7596),.N(1)) cell1
	(
		.clk(clk),
		.rst(rst),
		.x_in(x1),
		.y_in(y1), 
		.z_in(z1),
		.x_out(x2),
		.y_out(y2),
		.z_out(z2)
	);
	
	cordic_cell #(.SITA(4014),.N(2)) cell2
	(
		.clk(clk),
		.rst(rst),
		.x_in(x2),
		.y_in(y2), 
		.z_in(z2),
		.x_out(x3),
		.y_out(y3),
		.z_out(z3)
	);
	
	cordic_cell #(.SITA(2037),.N(3)) cell3
	(
		.clk(clk),
		.rst(rst),
		.x_in(x3),
		.y_in(y3), 
		.z_in(z3),
		.x_out(x4),
		.y_out(y4),
		.z_out(z4)
	);
	
	cordic_cell #(.SITA(1023),.N(4)) cell4
	(
		.clk(clk),
		.rst(rst),
		.x_in(x4),
		.y_in(y4), 
		.z_in(z4),
		.x_out(x5),
		.y_out(y5),
		.z_out(z5)
	);
	
	cordic_cell #(.SITA(512),.N(5)) cell5
	(
		.clk(clk),
		.rst(rst),
		.x_in(x5),
		.y_in(y5), 
		.z_in(z5),
		.x_out(x6),
		.y_out(y6),
		.z_out(z6)
	);
	
	cordic_cell #(.SITA(256),.N(6)) cell6
	(
		.clk(clk),
		.rst(rst),
		.x_in(x6),
		.y_in(y6), 
		.z_in(z6),
		.x_out(x7),
		.y_out(y7),
		.z_out(z7)
	);
	
	cordic_cell #(.SITA(128),.N(7)) cell7
	(
		.clk(clk),
		.rst(rst),
		.x_in(x7),
		.y_in(y7), 
		.z_in(z7),
		.x_out(x8),
		.y_out(y8),
		.z_out(z8)
	);
	
	cordic_cell #(.SITA(64),.N(8)) cell8
	(
		.clk(clk),
		.rst(rst),
		.x_in(x8),
		.y_in(y8), 
		.z_in(z8),
		.x_out(x9),
		.y_out(y9),
		.z_out(z9)
	);
	
	cordic_cell #(.SITA(32),.N(9)) cell9
	(
		.clk(clk),
		.rst(rst),
		.x_in(x9),
		.y_in(y9), 
		.z_in(z9),
		.x_out(x10),
		.y_out(y10),
		.z_out(z10)
	);
	
	cordic_cell #(.SITA(16),.N(10)) cell10
	(
		.clk(clk),
		.rst(rst),
		.x_in(x10),
		.y_in(y10), 
		.z_in(z10),
		.x_out(x11),
		.y_out(y11),
		.z_out(z11)
	);
	
	cordic_cell #(.SITA(8),.N(11)) cell11
	(
		.clk(clk),
		.rst(rst),
		.x_in(x11),
		.y_in(y11), 
		.z_in(z11),
		.x_out(x12),
		.y_out(y12),
		.z_out(z12)
	);
	
	cordic_cell #(.SITA(4),.N(12)) cell12
	(
		.clk(clk),
		.rst(rst),
		.x_in(x12),
		.y_in(y12), 
		.z_in(z12),
		.x_out(x13),
		.y_out(y13),
		.z_out(z13)
	);
	
	cordic_cell #(.SITA(2),.N(13)) cell13
	(
		.clk(clk),
		.rst(rst),
		.x_in(x13),
		.y_in(y13), 
		.z_in(z13),
		.x_out(x),
		.y_out(y),
		.z_out()
	);

endmodule

`timescale 1ns/100ps
module cordic_tb;
reg clk,rst;
reg signed [15:0] z;
wire signed [15:0] x,y;

initial
begin
	clk = 0;
	forever
		#10 clk = ~clk;
end

initial
begin
	rst = 1;
	#5 rst = 0;
end

initial
begin
	z = 0;
	#5 z = 0;
	#450 $finish ;
end

cordic_pipelined dut(
	.clk(clk),
	.rst(rst),
	.x(x),
	.y(y),
	.z(z)
);

endmodule

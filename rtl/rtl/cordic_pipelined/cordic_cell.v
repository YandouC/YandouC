`timescale 1ns/100ps
module cordic_cell #(parameter SITA=0,N=0)
(
	input	clk, rst,
	input signed  [15:0] x_in,y_in,z_in,
	output signed [15:0] x_out,y_out,z_out
);

	reg signed [15:0] x_reg,y_reg,z_reg,x_next,y_next,z_next;
	
	always @ (posedge clk, posedge rst) 
	begin
		if (rst)
		begin
			x_reg <= 0;
			y_reg <= 0;
			z_reg <= 0;
		end
		else
		begin
			x_reg <= x_next;
			y_reg <= y_next;
			z_reg <= z_next;
		end	
	end

	always @ (*)
	begin
		if (z_in[15]==1'b0)
		begin
			x_next = x_in - (y_in >>> N);
			y_next = y_in + (x_in >>> N);
			z_next = z_in - SITA;
		end
		else
		begin
			x_next = x_in + (y_in >>> N);
			y_next = y_in - (x_in >>> N);
			z_next = z_in + SITA;
		end
	end
 
	assign x_out = x_reg;
	assign y_out = y_reg;
	assign z_out = z_reg;
	
endmodule

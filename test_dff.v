
`timescale 1ns/1ps
`include "dff.v"

module dff_tb;

reg clk;
reg reset_n;
reg [3:0] d;
reg en;
wire [3:0] q;

dff obj (
	.clk(clk),
	.reset_n(reset_n),
	.d(d),
	.en(en),
	.q(q));

	initial begin
		clk = 1'b0;
	end

	always
	begin : Genclk
		#5 clk = 1'b1;
		#5 clk = 1'b0;
	end

	initial
	begin
		reset_n = 1'b0;
		#20 reset_n = 1'b1;
	end

	initial
	begin
		d = 1'b0;
		#20 d = 1'b1;
		#20 d = 1'b1;
		#20 d = 1'b0;
		#20 d = 1'b1;
		#20 d = 1'b1;
		#20 d = 1'b0;
		#20 d = 1'b1;
		#20 d = 1'b1;
	end

	initial
	begin
		en = 1'b0;
		#40 en = 1'b1;
		#40 en = 1'b0;
		#20 en = 1'b1;
		#20 en = 1'b0;
		#50 en = 1'b1;
		#70 en = 1'b0;
	end

endmodule

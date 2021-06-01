module sumator
(
	input   [2:0]   in,
	output          out,
	output          carry
);

	assign {carry, out} = in[0] + in[1] + in[2];

endmodule

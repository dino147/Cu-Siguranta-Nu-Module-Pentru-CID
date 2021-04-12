module shift_left (input [7:0] in1,
						       input [1:0] in2,
						       input e,
						       output reg [7:0] out);

always @(*)
	if (e) out = in1 << in2;
	else out = 0;
endmodule

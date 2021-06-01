module mux(input[3:0] in0, in1,
	   input sel,
	   output reg[3:0] out);

always @(*)
	case (sel)
		0: out = in0;
		1: out = in1;
		default: out = 0;
	endcase
	
endmodule

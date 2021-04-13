module mux(input[3:0] in,
  	       input [1:0] sel,
	         output reg y);

always @(*)
	case (sel)
		0: y = in[0];
		1: y = in[1];
		2: y = in[2];
		3: y = in[3];
		default: y = 0;
	endcase

endmodule

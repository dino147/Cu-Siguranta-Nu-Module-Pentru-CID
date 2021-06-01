module numarator(input ck,
					  input reset,
					  input load,
					  input en,
					  input UpDown,
					  input [4:0] in,
					  output reg [4:0] out);


always @(posedge ck)
	casex ({reset, load, en, UpDown})
		4'b1xxx : out <= 0;
		4'b01xx : out <= in;
		4'b001x : out <= out + (UpDown == 0 ? -1 : 1);
		default : out <= out;
   endcase

endmodule

module grey(input [2:0]in, output reg[2:0] g);
									
									
always @(*)

		case (in)
			3'b000: g = 3'b000;
			3'b001: g = 3'b001;
			3'b010: g = 3'b011;
			3'b011: g = 3'b010;
			3'b100: g = 3'b110;
			3'b101: g = 3'b111;
			3'b110: g = 3'b101;
			3'b111: g = 3'b100;
			default g = 0;
		endcase
	
endmodule

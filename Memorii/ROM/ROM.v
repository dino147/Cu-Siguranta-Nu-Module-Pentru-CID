module ROM(input[4:0] in,
			  output reg[9:0] out);
			  
always @(*) begin
	case(in)
		0: out = 10'b0000_00_0000;
		1: out = 10'b0000_00_0010;
		2: out = 10'b0010_00_0010;
		3: out = 10'b0001_00_0101;
		4: out = 10'b0010_01_0110;
		5: out = 10'b1101_01_0111;
		8: out = 10'b1010_10_0001;
		9: out = 10'b1111_11_0010;
		default: out = 0;
		
	endcase
end

endmodule
		
module comp_mux(input[3:0] a, b,
			      	  output reg[3:0] min, max);
				  
				  
always @(*)
	if(a <= b) begin min = a; max = b; end
	else begin min = b; max = a; end

endmodule

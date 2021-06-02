module RAM2porturi (
										input [7:0] dataIn,
										input [6:0] adr_a,
										input [6:0] adr_b,
										input ck,
										input we,
										output [7:0] dataOut
										);

										
reg [7:0] mem [0:127];

// memorie cu 2 porturi

//scrierea in memorie
always @(posedge ck) begin

		if(!we) mem[adr_a] <= dataIn;
		
end

//citirea din memorie
assign dataOut = mem[adr_b];		


endmodule 

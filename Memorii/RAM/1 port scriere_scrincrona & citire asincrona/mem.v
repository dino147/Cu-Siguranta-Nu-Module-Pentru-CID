module mem(input [6:0]adr, input [7:0]dataIN, input we, ck, output [7:0]dataOUT);

reg [7:0] mem [0:127];


always @ (posedge ck)
  if(!we) mem[adr] <= dataIN;

assign dataOUT = mem[adr];


endmodule

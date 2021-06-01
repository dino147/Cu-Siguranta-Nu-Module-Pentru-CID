module dmux(input en,
            input [1:0] sel,
            output reg [3:0] out);
				
always @(*)
  begin
    out = 0;
    case (sel)
    	0: out[0] = en;
    	1: out[1] = en;
    	2: out[2] = en;
    	3: out[3] = en;
    	default: out = 0;
    endcase
   end
				
endmodule

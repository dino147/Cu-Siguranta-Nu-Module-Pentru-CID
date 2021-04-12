module dmux(input[3:0] in,
            input [1:0] sel,
            output reg[3:0] out0, out1, out2, out3);

always @(*)
  begin
    out0 = 0;
    out1 = 0;
    out2 = 0;
    out3 = 0;
    case (sel)
    	0: out0 = in;
    	1: out1 = in;
    	2: out2 = in;
    	3: out3 = in;
    	default: out0 = 0;
    endcase
   end
  
endmodule

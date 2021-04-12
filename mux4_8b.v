module mux(input[7:0] in0, in1, in2, in3,
           input sel,
           output reg[7:0] out);

   always @ (sel or in0 or in1 or in2 or in3)
      
endmodule

always @(*)
  case (sel)
    0: out = in0;
    1: out = in1;
    2: out = in2;
    3: out = in3;
    default: out = 0;
  endcase

endmodule

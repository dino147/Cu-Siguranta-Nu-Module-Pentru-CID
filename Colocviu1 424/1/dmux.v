module dmux
(
   input        [2:0]   sel,
   input                en,
   output reg   [7:0]   out
);

   always @ (sel or en) begin
      out = 8'b0;
      out[sel] = en;
   end
   
endmodule

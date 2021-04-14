module nume_func
(
   input   [2:0]   in,
   output          F
);

   wire   [7:0]   w;

   dmux DMUX
   (
      .sel(in),
      .en(1'b1),
      .out(w)
   );
   
   or or1(F, w[0], w[1], w[3], w[4], w[7]);

endmodule

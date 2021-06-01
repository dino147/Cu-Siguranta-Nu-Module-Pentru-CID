module top_Cristea
(
   input   [2:0]   IN,
   output          OVERFLOW,
   output          OUT_Cristea
);
   
   wire w0, w1;

   nume_func NMFNC
   (
      .in(IN),
      .F(w1)
   );
   
   sumator SUM
   (
      .in(IN),
      .out(w0),
      .carry(OVERFLOW)
   );
   
   mux MUX
   (
      .i0(w0),
      .i1(w1),
      .sel(IN[0]),
      .y(OUT_Cristea)
   );

endmodule

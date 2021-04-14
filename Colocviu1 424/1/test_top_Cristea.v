module test_top_Cristea;

   reg   [2:0]   IN;
   wire          OVERFLOW;
   wire          OUT_Cristea;
   
   top_Cristea DUT
   (
      .IN(IN),
      .OVERFLOW(OVERFLOW),
      .OUT_Cristea(OUT_Cristea)
   );
   
   integer   i;
   
   initial begin
      for (i = 0; i < 8; i = i + 1) begin
         IN = i;
         #20;
      end
   end

endmodule

module Priority_Encoder
(
   input       [7:0]   IN,
   output              ZERO,
   output reg  [2:0]   OUT
);

   always @ (IN) begin
      casex (IN)
         8'B0000_0001 : OUT = 0;
         8'B0000_001X : OUT = 1;
         8'B0000_01XX : OUT = 2;
         8'B0000_1XXX : OUT = 3;
         8'B0001_XXXX : OUT = 4;
         8'B001X_XXXX : OUT = 5;
         8'B01XX_XXXX : OUT = 6;
         8'B1XXX_XXXX : OUT = 7;
         default      : OUT = 0;
      endcase
   end
   
   assign ZERO = (IN == 0) ? 1 : 0;

endmodule

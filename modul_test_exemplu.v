module test_bcdsum_cristea();

   reg     [3:0]    a0_sig;
   reg     [3:0]    b0_sig;
   reg     [3:0]    a1_sig;
   reg     [3:0]    b1_sig;
   wire    [3:0]    s0_sig;
   wire    [3:0]    s1_sig;
   wire             s2_sig;

   bcdsum_cristea DUT(.a0(a0_sig),
                      .b0(b0_sig),
                      .a1(a1_sig),
                      .b1(b1_sig),
                      .s0(s0_sig),
                      .s1(s1_sig),
                      .s2(s2_sig));
   
   initial begin
      a0_sig = 0;
      b0_sig = 0;
      a1_sig = 0;
      b1_sig = 0;
   end
   
   initial begin
      #3;
      while (1) begin
         #12 a1_sig = (a1_sig + 3) % 12;
         a1_sig = (a1_sig == 0) ? 3 : a1_sig;
      end
   end
   
   initial begin
      #9;
      while (1) begin
         a0_sig = (a0_sig + 3) % 12;
         a0_sig = (a0_sig == 0) ? 3 : a0_sig;
         #12;
      end
   end
   
   initial begin
      #3;
      while (1) begin
         b1_sig = (b1_sig != 4) ? 4 : 8;
         #12;
      end
   end
   
   initial begin
      while (1) begin
         #3 b0_sig = (b0_sig + 2) % 10;
         b0_sig = (b0_sig == 0) ? 2 : b0_sig;
      end
   end
   
   initial #100 $stop;

endmodule

module cmp (input[3:0] a,  b,
            output reg lt, eq, gt);

  always @(*)
    begin
        lt = 0;
        eq = 0;
        gt = 0;
        if (a < b) lt = 1;
            else if (a > b) gt = 1;
        else eq = 1;    
    end
  
endmodule

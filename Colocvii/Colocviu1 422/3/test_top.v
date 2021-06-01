module test_top ();

reg A, B, C, D;
reg [1:0] SEL1, SEL2;

wire out_nume;

  top dut (.A(A),
           .B(B),
           .C(C),
              .D(D),
           .SEL1(SEL1),
           .SEL2(SEL2),
           .out_nume(out_nume));

initial begin
    A = 1;
    B = 0;
    C = 0;
    D = 0;
    
    #20 
    
    A = 0;
    B = 0;
    C = 0;
    D = 0;
end

initial begin
    
    SEL1 = 2;
    SEL2 = 2;
    
    #20
        
    SEL1 = 2;
    SEL2 = 2;
    
    #5
        
    SEL1 = 1;
    SEL2 = 2;
    
    #5
        
    SEL1 = 0;
    SEL2 = 3;
    
    #10 $stop;
end


endmodule

module test_mem();

reg [6:0] adr;
reg [7:0] dIN;

reg we, ck;

wire [7:0] dOUT;

mem DUT (.adr(adr),
			.dataIN(dIN),
			.we(we),
			.ck(ck),
			.dataOUT(dOUT));

initial begin

    ck = 0; 
    forever #10 ck = ~ck;
	 
end

initial begin

    adr = 2;
    dIN = 22;
    we = 1;
    
    #25
	 we = 0;
    adr = 4;
    dIN = 44;
    

    #10
    we = 1;
    
    #30
	 we = 0;
    adr = 6;
    dIN = 66;
    
    
    #20
    adr = 7;
    dIN = 77;
    we = 0;
    
    #40
    we = 1;
    
    #40
    adr = 6;
    
    #20
    adr = 4;
    
    #20
    adr = 7;
    
    #80 $stop;
    
end

endmodule

module test_numarator();

wire [4:0] out;
reg [4:0] in;

reg ck, reset, load, en, UpDown;

numarator DUT (.ck(ck),
					.in(in),
					.reset(reset),
					.load(load),
					.en(en),
					.UpDown(UpDown),
					.out(out));

initial begin
    ck = 0; 
    forever #2 ck = ~ck;
     
end

integer i;


initial begin

	 #1 {reset, load, en, UpDown} = 4'b1000;
     
end

initial begin
	 in = 5'b10110;
    for(i = 0; i < 16; i = i + 1 ) begin
		{reset, load, en, UpDown} = i;
		#15;
	 end
     
end


initial begin

	 #500 $stop;
     
end


endmodule

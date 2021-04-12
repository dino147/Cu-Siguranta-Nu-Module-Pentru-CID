module sum(input[7:0] in1, in2,
	   input e,
	   output reg [7:0] out,
           output reg co);
								

always @(*)		
   if (e) {co, out} = in1 + in2;
   else begin
     out = 0;
     co = 0;
   end

endmodule

module registru(input in,
					 input ck,			
					 input reset,
					 input enable,
					 output reg Q) ;



always @(posedge ck) begin

	if(reset) Q <= 0;
		else if (enable) Q <= in;	
					else 	  Q <= Q; 

end 	



endmodule

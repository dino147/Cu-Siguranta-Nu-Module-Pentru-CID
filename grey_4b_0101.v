//Grey pe 4 biti incepand cu 0101
module grey(input [3:0]in,
            output reg[3:0] g);
                                    
                                    
always @(*)
        case (in)
            4'b0000: g = 4'b0101;
            4'b0001: g = 4'b0100;
            4'b0010: g = 4'b1100;
            4'b0011: g = 4'b1101;
            4'b0100: g = 4'b1111;
            4'b0101: g = 4'b1110;
            4'b0110: g = 4'b1010;
            4'b0111: g = 4'b1011;
            4'b1000: g = 4'b1001;
            4'b1001: g = 4'b1000;
            4'b1010: g = 4'b0000;
            4'b1011: g = 4'b0001;
            4'b1100: g = 4'b0011;
            4'b1101: g = 4'b0010;
            4'b1110: g = 4'b0110;
            4'b1111: g = 4'b0111;
            default: g = 0;
        endcase
endmodule

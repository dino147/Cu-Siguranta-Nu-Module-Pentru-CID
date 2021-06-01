module Shift_Register (
input SI,
input ck,
input Clear, 
input Enable, 
output reg [7:0] Qout
);

//Registru care deplaseaza la stanga SI-ul introdus

always @ (posedge ck) begin

    casex ( {Clear, Enable} )
        2'b1x: Qout <= 8'b00000000;
        2'b01: begin 
                Qout <= Qout << 1;
                Qout[0] <= SI; 
            end
        default:  Qout <= Qout;
    endcase
end

endmodule 

module ALUNELU (input [2:0] opA, input [2:0] opB, input [1:0] sel,
                     output reg [3:0] out);
                     
    
    always @ ( * )
        case ( sel )
            0: out = 1;
            1: out = opA + opB;
            2: out = opA ^ opB;
            3: out = opA < opB;
          default out = 1;
        endcase
        
endmodule

module top (input A,
            input B,
            input C,
                input D,
            input [1:0] SEL1,
            input [1:0] SEL2,
            output out_nume);

wire notB, sauout, notC, nandout, en;
wire [3:0] w3;

not p1 (notB, B);

or p2 (sauout, A, notB);

not p3 (notC, C);

nand p4 (nandout , notC, D);

xor p5 (en, nandout, sauout);

dmux DMUX (.en(en), .sel(SEL1), .out(w3));

mux MUX (.in(w3), .sel(SEL2), .y(out_nume));

endmodule

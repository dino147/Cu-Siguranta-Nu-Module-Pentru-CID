module top (input A,
            input B,
            input C,
            input [1:0] SEL1,
            input [1:0] SEL2,
            output out_nume);

wire w1, w2, en;
wire [3:0] w3;

not p1 (w1, A);
nor p2 (w2, B, C);
and p3 (en , w1, w2);

dmux DMUX (.en(en),
           .sel(SEL1),
           .out(w3));

mux MUX (.in(w3),
         .sel(SEL2),
         .y(out_nume));

endmodule

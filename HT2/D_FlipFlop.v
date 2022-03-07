module D_FlipFlop(
    input wire D,
    input wire C,
    output wire Q,
    output wire nQ
);

wire QM;
wire nC;
assign nC = ~C;

D_Latch master(
    .D(D),
    .C(C),
    .Q(QM)
);

D_Latch slave(
    .D(QM),
    .C(C),
    .Q(Q),
    .nQ(nQ)
);

endmodule
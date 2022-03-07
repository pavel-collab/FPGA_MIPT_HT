module SR_Latch(
    input wire S,
    input wire R,
    output wire Q,
    output wire nQ
);
    assign Q = ~(R | nQ);
    assign nQ = ~(S | Q);

endmodule
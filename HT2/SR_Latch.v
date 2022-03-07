// S, R -- входные шины, C -- шина состояния
module SR_Latch(
    input wire S,
    input wire R,
    input wire C,
    output wire Q,
    output wire nQ
);
    assign Q = (~(R | nQ)&C);
    assign nQ = (~(S | Q)&C);

endmodule
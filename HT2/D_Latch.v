module D_Latch(
    input wire D,
    input wire C,
    output wire Q,
    output wire nQ
);

// регистр состояния для SR-Latch
reg clk = 1'b1;
wire s1; 
wire s2;

assign s2 = ~(D & C);
assign s1 = ~((~D) & C);

// создаем компонент модуя SR_Latch, подключаем порты модуля D_Latch к портам модуля SR_Latch
SR_Latch SR_Latch_inst(
    .S(s1),
    .R(s2),
    .C(clk), // держим состояние SR-Latch открытым
    .Q(Q),
    .nQ(nQ)
);

endmodule
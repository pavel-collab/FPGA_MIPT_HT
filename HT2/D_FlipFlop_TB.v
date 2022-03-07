/*
Test banch для модуля D-FlipFlop
*/
//* How to build: iverilog D_FlipFlop_TB.v D_FlipFlop.v D_Latch.v SR_Latch.v -o out
//* ./out
//* gtkwave dump.vcd
// Устанавливаем размерность времени
`timescale 1 ns/100 ps

// порты test banch
module testbench(
     output wire Q_o,
     output wire nQ_o
);

// создадим регистровые переменные и присвоим им начальные значения 
reg D_i = 1'b0;
reg C_i = 1'b0;

// создаем экземпляр модуля D_FlipFlop и соединяем его входы и выходы с входами и выходами test banch 
D_FlipFlop D_FlipFlop_inst(
     .D(D_i),
     .C(C_i),
     .Q(Q_o),
     .nQ(nQ_o)
);

// основной блок
initial begin
    $dumpvars;
    $display("Test started");
    #0.5 D_i = ~D_i;
    #0.5 C_i = ~C_i;
    #1 C_i = ~C_i;
    #0.5 D_i = ~D_i;
    #0.5 C_i = ~C_i;
    #0.5 D_i = ~D_i;
    #0.5 C_i = ~C_i;
    #1 C_i = ~C_i;
    #0.5 D_i = ~D_i;
    #0.5 C_i = ~C_i;
    #1 C_i = ~C_i;

    #100 $finish;
end

endmodule
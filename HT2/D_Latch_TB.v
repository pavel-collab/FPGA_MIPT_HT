/*
Test banch для модуля SR-Latch
*/
//* How to build: iverilog D_Latch_TB.v D_Latch.v SR_Latch.v -o out
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
reg C_i = 1'b1;

// создаем экземпляр модуля SR_Latch и соединяем его входы и выходы с входами и выходами test banch 
D_Latch D_Latch_inst(
     .D(D_i),
     .C(C_i),
     .Q(Q_o),
     .nQ(nQ_o)
);

// основной блок
initial begin
    $dumpvars;
    $display("Test started");
    #1 D_i = ~D_i;
    #2 D_i = ~D_i;
    #1 D_i = ~D_i;
    #1 D_i = ~D_i;
    #1 D_i = ~D_i;
    #1 C_i = ~C_i;
    #1 D_i = ~D_i;
    #2 C_i = ~C_i;
    #1 D_i = ~D_i;
    #1 D_i = ~D_i;
    #1 C_i = ~C_i;

    #100 $finish;
end

endmodule
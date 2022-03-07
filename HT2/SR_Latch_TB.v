/*
Test banch для модуля SR-Latch
*/
//* How to build: iverilog SR_Latch_TB.v SR_Latch.v -o out
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
reg S_i = 1'b0;
reg R_i = 1'b0;

// создаем экземпляр модуля SR_Latch и соединяем его входы и выходы с входами и выходами test banch 
SR_Latch SR_Latch_inst(
     .S(S_i),
     .R(R_i),
     .Q(Q_o),
     .nQ(nQ_o)
);

// основной блок
initial begin
     $dumpvars;
     $display("Test started");
     #1 S_i = ~S_i;
     #1 S_i = ~S_i;
     #1 R_i = ~R_i;
     #1 R_i = ~R_i;
     #1 S_i = ~S_i;
     #1 S_i = ~S_i;

     #100 $finish;
end

endmodule
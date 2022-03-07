## Home task 2.

Во втором домашнем задании необходимо написать реализации SR-Latch, D-Latch, D-FlipFlop, а так же D-FlipFlop Test Banch на языке Verilog.
Для компиляции модулей используется компилятор Icarus Verolog (iverilog). Для визуализации временных диаграм инструмент gtkwave.

### SR-Latch

<p align="center">
    <img src="https://github.com/pavel-collab/FPGA_MIPT_HT/blob/master/HT2/images/SR_Latch.png" alt="caption" width="300"/>
</p>

How to build test bench:
```
iverilog SR_Latch_TB.v SR_OR_Latch.v -o out
./out
gtkwave dump.vcd
```

### D-Latch

<p align="center">
    <img src="https://github.com/pavel-collab/FPGA_MIPT_HT/blob/master/HT2/images/D_FlipFlop.png" alt="caption" width="300"/>
</p>

How to build test bench:
```
iverilog D_Latch_TB.v D_Latch.v SR_Latch.v -o out
./out
gtkwave dump.vcd
```

### D-FlipFlop

<p align="center">
    <img src="https://github.com/pavel-collab/FPGA_MIPT_HT/blob/master/HT2/images/D_Latch.png" alt="caption" width="300"/>
</p>

How to build test bench:
```
iverilog D_FlipFlop_TB.v D_FlipFlop.v D_Latch.v SR_Latch.v -o out
./out
gtkwave dump.vcd
```
.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable
.include 'sram_6t.spi'

x1 clk D RE VDD VSS WE sram_6t

VCLK CLK GND pulse 0 1.8 5n 0.1n 0.1n 100n 200n
VDD VDD GND 1.8
VSS VSS GND 0
VD D GND pulse 0 1.8 15n 0.1n 0.1n 950n 2000n
VWE WE GND pulse 0 1.8 2n 0.1n 0.1n 500n 1000n
VRE RE GND pulse 0 1.8 505n 0.1n 0.1n 500n 1000n

.tran 1p 4u
.end

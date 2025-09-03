.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable

.include 'latch.spi'

X1 clk D Q VDD VSS ~Q D_Latch

VD D GND pulse 0 1.8 10n 100p 100p 39.8n 80n
VCLK CLK GND pulse 0 1.8 20n 100p 100p 29.8n 60n
VDD VDD GND 1.8
VSS VSS GND 0

.tran 1n 1u

.end

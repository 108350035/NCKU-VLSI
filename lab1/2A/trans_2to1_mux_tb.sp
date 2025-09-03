.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable

.include 'trans_2to1_mux.spi'

X1 D0 D1 S VDD VSS Y trans_2to1_mux

VD0 D0 GND pulse 0 1.8 10n 100p 100p 39.8n 80n
VD1 D1 GND pulse 0 1.8 10n 100p 100p 79.8n 160n
VS S GND pulse 0 1.8 20n 100p 100p 19.8n 40n
VDD VDD GND 1.8
VSS VSS GND 0

.tran 1n 1u

.end

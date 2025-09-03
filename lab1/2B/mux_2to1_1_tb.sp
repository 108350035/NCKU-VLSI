.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable

.include 'mux_2to1_1.spi'

X1 A0 A1 OUT S VDD VSS mux_2to1_1

VA0 A0 GND pulse 0 1.8 10n 100p 100p 39.8n 80n
VA1 A1 GND pulse 0 1.8 10n 100p 100p 79.8n 160n
VS S GND pulse 0 1.8 20n 100p 100p 19.8n 40n
VDD VDD GND 1.8
VSS VSS GND 0

.tran 1n 1u

.end

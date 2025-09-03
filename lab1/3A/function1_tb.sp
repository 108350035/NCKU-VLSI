.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable

.include 'function1.spi'

X1 A B C D OUT VDD VSS Function_1

VA A GND pulse 0 1.8 10n 100p 100p 79.8n 160n
VB B GND pulse 0 1.8 10n 100p 100p 39.8n 80n
VC C GND pulse 0 1.8 10n 100p 100p 19.8n 40n
VD D GND pulse 0 1.8 10n 100p 100p 9.8n 20n
VDD VDD GND 1.8
VSS VSS GND 0

.tran 1n 1u

.end

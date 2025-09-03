.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable
.include 'ring_osc.spi'

x1 IN VDD VSS ring_osc

VDD VDD GND 1.8
VSS VSS GND 0

.IC V(IN) = 0
.tran 1n 1u
.end

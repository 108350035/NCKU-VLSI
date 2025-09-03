.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable
.include 'write_SNM.spi'

x1 V1 V2 VDD VSS write_SNM

VV2 V2 GND x
VDD VDD GND 1.8
VSS VSS GND 0
.dc x 0 1.8 0.01
.print v(V1)
.end

.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable

.include 'inv.spi'

X1 IN OUT VDD VSS INV

VIN IN GND x
VDD VDD GND 1.8
VSS VSS GND 0
.dc x 0 1.8 0.01
.meas dc vth find V(out) when V(out)=V(in)

.end


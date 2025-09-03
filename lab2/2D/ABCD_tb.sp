.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable


.include 'A.spi'
x1 pulse_in OUT VDD VSS A

*.include 'B.spi'
*x1 pulse_in OUT VDD VSS B

*.include 'C.spi'
*x1 pulse_in OUT VDD VSS C

*.include 'D.spi'
*x1 pulse_in OUT VDD VSS D


VIN pulse_in GND PULSE(0 1.8 5n 0.2n 0.2n 9.8n 20n)
VDD VDD GND 1.8
VSS VSS GND 0

.tran 1n 1u

.measure tran tdelay_rise trig v(pulse_in) val=0.9 td=0 rise=2 targ v(out) val=0.9 rise=2
.measure tran tdelay_fall trig v(pulse_in) val=0.9 td=0 fall=2 targ v(out) val=0.9 fall=2
.measure tran tdelay_avg param='(tdelay_rise+tdelay_fall)/2'
.end

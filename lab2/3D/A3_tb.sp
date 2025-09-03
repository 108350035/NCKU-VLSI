.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable
.include 'A3.pex.spi'

x1 A OUT B C D VSS E VDD A3
VA A GND 0
VB B GND 0
VC C GND 0
VD D GND 0
Ve E GND 0
VDD VDD GND 1.8
VSS VSS GND 0

.tran 1n 1u

*pattern 1
.alter
VA A GND pulse 0 1.8 9.8n 0.2n 0.2n 9.8n 20n
VB B GND 1.8
VC C GND 1.8
VD D GND 1.8
Ve E GND 1.8

.measure tran tdelay_rise trig v(A) val=0.9 td=0 fall=5 targ v(out) val=0.9 rise=5


*pattern 2
.alter
VA A GND 1.8
VB B GND pulse 0 1.8 9.8n 0.2n 0.2n 9.8n 20n 
VC C GND 0
VD D GND 0
Ve E GND 0
.measure tran tdelay_fall trig v(B) val=0.9 td=0 rise=5 targ v(out) val=0.9 fall=5

*pattern 3
.alter
VA A GND pulse 0 1.8 9.8n 0.2n 0.2n 9.8n 20n
VB B GND 0
VC C GND 0
VD D GND 0
Ve E GND 1.8
.measure tran tdelay_rise trig v(A) val=0.9 td=0 fall=5 targ v(out) val=0.9 rise=5

*pattern 4
.alter
VA A GND 1.8
VB B GND 0
VC C GND 0
VD D GND 0
Ve E GND pulse 0 1.8 9.8n 0.2n 0.2n 9.8n 20n
.measure tran tdelay_fall trig v(E) val=0.9 td=0 rise=5 targ v(out) val=0.9 fall=5

*pattern 5
.alter
VA A GND 1.8
VB B GND 0
VC C GND pulse 0 1.8 9.8n 0.2n 0.2n 9.8n 20n
VD D GND 0
Ve E GND 0
.measure tran tdelay_rise trig v(C) val=0.9 td=0 fall=5 targ v(out) val=0.9 rise=5

*pattern 6
.alter
VA A GND pulse 0 1.8 9.8n 0.2n 0.2n 9.8n 20n
VB B GND 0
VC C GND 0
VD D GND 1.8
Ve E GND 1.8
.measure tran tdelay_fall trig v(A) val=0.9 td=0 rise=5 targ v(out) val=0.9 fall=5

.end

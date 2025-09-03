.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable
.include 'VCO.spi'

x1 CTRL ~CTRL IN VDD VSS VCO
VCTRLB ~CTRL GND 1.1
VCTRL CTRL GND 0.7
VDD VDD GND 1.8
VSS VSS GND 0

.IC V(IN) = 0
.tran 1n 1u
.meas tran period trig v(in) val=0.9 fall=10 targ v(in) val=0.9 fall=11
.meas tran frequency param='1/period'
.meas tran t_on trig v(in) val=0.9 rise=10 targ v(in) val=0.9 fall=10
.meas tran duty_cycle param='t_on/period'
.end

.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable
.param M=1
.include 'nor3_chain.spi'

x1 pulse_in pulse_out VDD VSS INV_CHAIN M1=M M2='M**2' M3='M**3' M4='M**4'

VIN pulse_in GND PULSE(0 1.8 5n 0.2n 0.2n 9.8n 20n)
VDD VDD GND 1.8
VSS VSS GND 0

.tran 1n 1u

.measure tran tdelay_rise trig v(x1.in) val=0.9 td=0 fall=2 targ v(x1.out) val=0.9 rise=2
.measure tran tdelay_fall trig v(x1.in) val=0.9 td=0 rise=2 targ v(x1.out) val=0.9 fall=2
.measure tran tdelay_avg param='(tdelay_rise+tdelay_fall)/2'
.alter 
.param M=2
.alter 
.param M=3
.alter
.param M=4
.alter 
.param M=5
.alter 
.param M=6
.alter 
.param M=7

.end

.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable
.include 'AND6_pseudo.spi'

x1 A B C D E F net0 VDD VSS nand6

MM0 net1 net0 VDD VDD p_18 W=7.2u L=180n
MM1 net1 net0 VSS VSS n_18 W=3.6u L=180n
MM2 OUT net1 VDD VDD p_18 W=21.6u L=180n
MM3 OUT net1 VSS VSS n_18 W=10.8u L=180n

VA A GND pulse 0 1.8 10n 100p 100p 20n 40n
VB B GND 1.8
VC C GND 1.8
VD D GND 1.8
VE E GND 1.8
VF F GND 1.8


VDD VDD GND 1.8
VSS VSS GND 0

.tran 1n 1u
.meas tran rising_delay trig v(A) val=0.9 td=0 rise=5 targ v(net0) val=0.9 td=0 rise=5
.meas tran falling_delay trig v(A) val=0.9 td=0 fall=5 targ v(net0) val=0.9 td=0 fall=5
.meas tran delay_avg param='(rising_delay+falling_delay)/2'

.end

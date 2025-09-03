.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable
.include 'AND6_domino.pex.spi'

x1 CLK F E D C B A VDD net0 VSS nand6

MM0 net1 net0 VDD VDD p_18 W=7.2u L=180n
MM1 net1 net0 VSS VSS n_18 W=3.6u L=180n
MM2 OUT net1 VDD VDD p_18 W=21.6u L=180n
MM3 OUT net1 VSS VSS n_18 W=10.8u L=180n

VCLK CLK GND pulse 0 1.8 10n 100p 100p 40n 80n
VA A GND pulse 0 1.8 30n 100p 100p 10n 80n
VB B GND 1.8
VC C GND 1.8
VD D GND 1.8
VE E GND 1.8
VF F GND 1.8


VDD VDD GND 1.8
VSS VSS GND 0

.tran 1n 1u

.meas tran rising_delay trig v(A) val=0.9 td=0 rise=5 targ v(net0) val=0.9 td=0 rise=5

.end

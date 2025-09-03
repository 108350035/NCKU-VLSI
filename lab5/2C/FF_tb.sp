.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.param DELAY=19n
.option post acout=0 runlvl=6 captable
.include 'FF.spi'

x1 CLK ~CLK D Q VDD VSS FF
x2 CLK ~CLK Q net0 VDD VSS FF m=4


VCLK CLK GND pwl 0 0 20n 0 '20n+80p' 1.8 50n 1.8 '50n+80p' 0 100n 0 '100n+80p' 1.8 150n 1.8 '150n+80p' 0
VCLK_b ~CLK GND pwl 0 1.8 20n 1.8 '20n+80p' 0 50n 0 '50n+80p' 1.8 100n 1.8 '100n+80p' 0 150n 0 '150n+80p' 1.8


VDD VDD GND 1.8
VSS VSS GND 0

.tran 1n 1u sweep DELAY 19n 22n 10p

**2C
**setup time for rising input, Tccq Tpcq
*.ic V(Q)=0
*VD D GND pwl 0 0 DELAY 0 'DELAY+80p' 1.8
*.meas tran tcq  trig v(clk) val=0.9 rise=1 targ v(Q) val=0.9 rise=1
*.meas tran tsetup1  trig v(D) val=0.9 rise=1 targ v(clk) val=0.9 rise=1 *Tsetup1 when Q rise

**setup time for falling input, Tccq Tpcq
*.ic V(Q)=1.8
*VD D GND pwl 0 1.8 DELAY 1.8 'DELAY+80p' 0
*.meas tran tcq  trig v(clk) val=0.9 rise=1 targ v(Q) val=0.9 fall=1
*.meas tran tsetup0  trig v(D) val=0.9 fall=1 targ v(clk) val=0.9 rise=1 *Tsetup0 when Q fall

**hold time for rising input
*.ic V(Q)=1.8
*VD D GND pwl 0 0 DELAY 0 'DELAY+80p' 1.8
*.meas tran thold0  trig v(clk) val=0.9 rise=1 targ v(D) val=0.9 rise=1 *Thold0 when Q fall

**hold time for falling input
*.ic V(Q)=0
*VD D GND pwl 0 1.8 DELAY 1.8 'DELAY+80p' 0
*.meas tran thold0  trig v(clk) val=0.9 rise=1 targ v(D) val=0.9 fall=1 *Thold1 when Q rise

**2D
**DRQR
*.ic V(Q)=0
*VD D GND pwl 0 0 DELAY 0 'DELAY+80p' 1.8 'DELAY+80p+10n' 1.8 'DELAY+160p+10n' 0
*.meas tran tdc  trig v(D) val=0.9 rise=1 targ v(clk) val=0.9 rise=1
*.meas tran tcq  trig v(clk) val=0.9 rise=1 targ v(Q) val=0.9 rise=1

**DRQF
*.ic V(Q)=1.8
*VD D GND pwl 0 0 DELAY 0 'DELAY+80p' 1.8
*.meas tran tdc  trig v(D) val=0.9 rise=1 targ v(clk) val=0.9 rise=1
*.meas tran tcq  trig v(clk) val=0.9 rise=1 targ v(Q) val=0.9 fall=1

**DFQR
*.ic V(Q)=0
*VD D GND pwl 0 1.8 DELAY 1.8 'DELAY+80p' 0
*.meas tran tdc  trig v(D) val=0.9 fall=1 targ v(clk) val=0.9 rise=1
*.meas tran tcq  trig v(clk) val=0.9 rise=1 targ v(Q) val=0.9 rise=1

**DFQF
.ic V(Q)=1.8
VD D GND pwl 0 1.8 DELAY 1.8 'DELAY+80p' 0 'DELAY+80p+10n' 0 'DELAY+160p+10n' 1.8
.meas tran tdc  trig v(D) val=0.9 fall=1 targ v(clk) val=0.9 rise=1
.meas tran tcq  trig v(clk) val=0.9 rise=1 targ v(Q) val=0.9 fall=1


.end

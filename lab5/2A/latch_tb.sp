.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.param DELAY=19n
.option post acout=0 runlvl=6 captable
.include 'latch.spi'

x1 EN ~EN D Q VDD VSS D_Latch
x2 EN ~EN Q net0 VDD VSS D_Latch m=3

VEN EN GND pwl 0 0 20n 0 '20n+80p' 1.8 50n 1.8 '50n+80p' 0 100n 0 '100n+80p' 1.8 150n 1.8 '150n+80p' 0
VEN_b ~EN GND pwl 0 1.8 20n 1.8 '20n+80p' 0 50n 0 '50n+80p' 1.8 100n 1.8 '100n+80p' 0 150n 0 '150n+80p' 1.8
VD D GND pwl 0 0 DELAY 0 'DELAY+80p' 1.8

VDD VDD GND 1.8
VSS VSS GND 0

.tran 1n 1u sweep DELAY 1n 50.5n 10p
.meas tran tdcr trig v(D) val=0.9 rise=1 targ v(EN) val=0.9 rise=1
.meas tran tcq  trig v(EN) val=0.9 rise=1 targ v(Q) val=0.9 rise=1
.meas tran tdq  trig v(D)  val=0.9 rise=1 targ v(Q) val=0.9 rise=1

.end

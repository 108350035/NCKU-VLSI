.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable

.include 'nmos_pass.spi'

X1 CLK IN OUT VSS NMOS_pass_t

VIN IN GND pulse 0 1.8 10n 100p 100p 39.8n 80n
VCLK CLK GND pulse 0 1.8 20n 100p 100p 39.8n 80n
VSS VSS GND 0
C1 OUT GND 0.1p

.tran 1n 1u

.end

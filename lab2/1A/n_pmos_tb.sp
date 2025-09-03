.protect
.lib '/home/IC/Synopsys/hspice/cic018.l' tt
.unprotect
.temp 25
.option post acout=0 runlvl=6 captable
.include 'n_pmos.spi'

*X1 VDS VGS VSS VSS NMOS
X1 VDS VGS VDD VDD PMOS

*.dc D 0 1.8 0.1 sweep G 0 1.8 0.1
.dc G 0 1.8 0.1 sweep D 0 1.8 0.1

VDD VDD GND 1.8
VSS VSS GND 0
VGS VGS GND G
VDS VDS GND D
.probe i(x1.MM0) vds(x1.MM0) vgs(x1.MM0)
.end


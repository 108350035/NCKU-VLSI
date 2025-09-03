## 1D

 threshold voltage = 0.90003V

## 1G

 inv_chain:
 d=f+p=gh+p=h+1
 dabs=dτ,τ在180nm下為12ps，因此dabs=16*10^-12*h+16*10^-12

 nor3_chain:
 dabs=2.5h+3
 dabds=40*10^-12*h+48*10^-12，很接近實驗公式

## 2A
 G=(8/3)*1=8/3
 B=1
 H=1000f/10f=100
 P=6+1=7

 Dmin=2*(800/3)^0.5+7=39.66

 省略計算過程
 
 Dmin=38.33
 Dmin=40.28
 Dmin=22.44

2B.

f=F^(1/N)=(800/3)^0.5=16.32
Cin=Cout*g/f
Cin of 2 stage = 1000*1/16.32=61.24
h of 2 stage = 1000/61.24=16.33
Cin of 1 stage = 61.24*(8/3)/16.32=10
h of 1 stage = 61.24/10-6.12

以下省略過程
Cin of 2 stage = 100
h of 2 stage = 10
Cin of 1 stage = 10
h of 1 stage = 10

Cin of 2 stage = 132.94
h of 2 stage = 10
Cin of 1 stage = 7.52
h of 1 stage = 13.29

Cin of 4 stage = 259
h of 4 stage = 3.86
Cin of 3 stage = 89.44
h of 3 stage = 2.9
Cin of 2 stage = 23.17
h of 2 stage = 3.86
Cin of 1 stage = 10
h of 1 stage = 2.32

## 2C
 1 stage
 Cin=10fF= 2r + 6r ->r=1.25
 Cgate of PMOS = 2r = 2.5fF -> W=2.5/2=1.25u
 Cgate of NMOS = 6r = 7.5fF -> W=7.5/2=3.25u

 2stage
 Cin = 2r + 1r = 3r = 61.24fF -> r=20.41
 Cgate of PMOS = 2r = 40.83fF -> W=20.41u
 Cgate of NMOS = 20.41fF -> W = 10.21u

 1stage
 Wpmos=2u
 Wnmos=3u

 2stage
 Wpmos=40u
 Wnmos=10u

 1stage
 Wpmos=2.5u
 Wnmos=2.5u

 2stage
 Wpmos=56.98u
 Wnmos=9.5u

 1stage
 Wpmos=2u
 Wnmos=3u

 2stage
 Wpmos=7.72u
 Wnmos=3.86u

 3stage
 Wpmos=22.36u
 Wnmos=22.36u

 4stage
 Wpmos=86.33u
 Wnmos=43.17u

## 2E

τ=4RC=16*e^-12

a.39.66τ=6.35*e^-10
b.38.33τ=6.13*e^-10
c.40.28τ=6.45*e^-10
d.22.44τ=3.59*e^-10

數值沒有很接近，但有相似的趨勢

## 3C

 pattern 1: tpdr = 9.5*RC
 pattern 2: tpdf = 12.5*RC
 pattern 3: tpdr = 36.5*RC
 pattern 4: tpdf = 37.5*RC
 pattern 5: tpdr = 23*RC
 pattern 6: tpdf = 20.625*RC

## 3E

 RC = (8.396*e-11)/23

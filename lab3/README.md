## 1A
 
 Px1=Px2=Px3=Px4=0.25(輸出為1之機率)
 
 Px1=Px2=Px3=Px4=0.75(輸出為0之機率)
 
 ax1=ax2=ax3=ax4=3/16
 
 Py=(0.25)^4=1/256 (輸出為1之機率)
 
 Py=1-(0.25)^4=255/256 (輸出為0之機率)
 
 ay=255/(256)^2

## 1C
 
 照logic effort的公式，得出Cin1=4,Cin2=20
 
 Wp1=1.5um、Wn1=0.5um
 
 Wp2=7.5um、、Wn2=2.5um
 
 功耗有靜態功耗、動態功耗、短路功耗
 
 而理論值只有計算動態的(Pdya=0.2*1.8^2*10^-6*(100+20+20+4)=9.33*e-08，電容為各級的負載電容與寄生電容)，
 
 因此會低於實驗值(hspice模擬得出9.543e-08)
 
 如果將td=clk_period/10，則Pdya=1.591*e-06。因會讓反相器更容易發生短路功耗

## 3A
 a.F=GBH=4/3*500/10=200/3
 
 N=log(200/3) / log4 = 3
 
 f=(200/3)^(1/4)= 2.857
 
 Cin4=175
 
 Wp=58.33um、Wn=29.16um
 
 Cin3=61.25
 
 Wp=20.42um、Wn=10.21um
 
 Cin2=21.44
 
 Wp=7.15um、Wn=3.57um
 
 Cin1=10 (nand2)
 
 Wp=2.5um、Wn=2.5um

 b.N正比於總電容正比於功耗，所以N=1
 
 D=4/3*(x/10)+3+500/x=30
 
 x=20.6f=Cin2
 
 Wp=6.87um、Wn=3.44um
 
 Cin1=10f
 
 Wp=Wn=2.5um

 neglect diffusion cap->Ctot=500+20.6+10
 
 Pdya=a*530.6*VDD^2*f

## 3B

f(x)=delay * power = 4/3*x/10+3+500/x*a*(500+15+2x)*VDD^2*f=(4/3*x/10+3+500/x*(515+2x))*a*VDD^2*f

 f'(x)=0可得出最小值為50.36
 
 Cin2=50.36
 
 Wp=16.78um、Wn=83.9um
 
 Cin1=10f
 
 Wp=Wn=2.5um

## 3C

 bc:由於輸入B所屬的P/NMOS已預充/放電，可忽略該電容
 
 tpdf=(R/2+R/2)*6C=6RC
 
 tpdr=R*6C=6RC

 wc:不能忽略電容。
 
 tpdf=(R/2)*2C+(R+R/2)*6C=15/2RC
 
 tpdr=R*6C+(R+R/2)*2C=15/2RC

 W太小，驅動力不足，延遲大；W太大，電容太大，功耗大



# NCKU-VLSILAB
成大VLSI lab 練習


## lab 1

### 1A 

 a.畫P/NMOS傳輸閘、NMOS傳輸閘、PMOS傳輸閘 schematic
 b.用hspice模擬1A，求輸入、輸出波形
 c.比較，以及解釋傳輸閘為何受歡迎

### 1B
	
 a.畫 DFF and D-Latch schematic
 b.用給定的輸入pattern模擬，求輸入、輸出波形
 c.layout，確保DRC、LVS正確

### 2A

 a.畫 transmission gate multiplexer schematic
 b.用給定的輸入pattern模擬，求輸入、輸出波形

### 2B

 a.畫兩種不同型態的multiplexer schematic 
 b.用給定的輸入pattern模擬，求輸入、輸出波形
 c.layout，確保DRC、LVS正確

### 3A

 a.畫 function1、function2 schematic
 b.用給定的輸入pattern模擬，求輸入、輸出波形
 c.layout，確保DRC、LVS正確

### 3B

 a.畫 table 5 的 schematic 
 b.用給定的輸入pattern模擬，求輸入、輸出波形
 c.layout，確保DRC、LVS正確
 d.post模擬，求輸入、輸出波形


## lab 2

### 1A

 在NMOS的不同VGS/VDS下，繪製 IDS vs. VDS/VGS 圖

### 1B

 在PMOS的不同VGS/VDS下，繪製 IDS vs. VDS/VGS 圖

### 1C

 合併1A的I-VGS和I-VDS成一個3維圖

### 1D

 繪製反相器的轉移曲線圖，並找出threshold voltage

### 1E

 繪製 INV chain 的 dellay vs. fan-out，fan-out為1~7，並找出Tgate and Tparasitic

### 1F

  繪製 NOR chain 的 dellay vs. fan-out，fan-out為1~7，並找出Tgate and Tparasitic

### 1G

 比較1E跟1F

### 2A

 找各電路的path logical effort 以及 total path effort

### 2B

 求在最小化path delay下的electrical effort

### 2C

 調整各gate之size，來最小化delay

### 2D

 將在2C得到之size，用於模擬並求得delay

### 2E

 將模擬及自己推導之數據進行比較

### 2F

 將2A中delay最小的電路進行layout

### 3A

 觀察圖中的stick diagram，進行優化

### 3B

 將圖中的stick diagram轉電路圖，並找出合適size、標註電容(考慮擴散電容)

### 3C

 根據表中的pattern與Elmore delay model，估計3A中最好電路的Tpdr/Tpdf

### 3D

 將3A中最好的stick diagram，進行layout與post sim

### 3E

 根據3D模擬結果，找出CIC 180nm process的τ = RC之值

## lab 3

### 1A

 找各節點的activity factors and probabilities

### 1B

 找各signal的activity factors

### 1C

 a.設計具有最小delay的電路，並計算delay與gate size
 b.用hspice找出最小動態功耗
 c.改變上升/下降時間，並再次計算動態功耗

### 2A

 設計ring oscillator並用hspice模擬

### 2B

 畫ring oscillator的layout，後跑post sim

### 2C

 中心頻率為3GHz時Vctrl=~Vctrl=0.9V。 設計一個當Vctrl=0.7~1.1V、~Vctrl=1.8-Vctrl，頻率的覆蓋範圍是2.9GHz~3.1GHz的ring oscillator，並用hspice模擬

### 3A

 a.要獲得最小的delay，需設計多少級與gate size
 b.若delaly為29τ~30τ，需設計多少級與gate size來獲得最小功耗

### 3B

 求最小的power delay product

### 3C

 a.推導nand的tpdr與tpdf，得出最佳/最壞input order
 b.sweep sizes of inverter，找出power delay product

## lab 4

### 1A
 
 a.畫自己設計的Xout之 schematic and stick diagram
 b.推導the worst charge-sharing noise，並畫 charge-sharing noise vs . electrial effort(from 1 to 7)圖

### 1B

 模擬1A的電路，並且需自行設計pattern與tb來獲取the worst charge-sharing noise

### 2A

 用兩級邏輯構成電路，並用logica effort選擇最佳架構及尺寸，最後估算delay

### 2B

 模擬2A的電路

### 2C

 layout pseudo nmos logic or domino logic構成的電路

## lab 5

### 1A

設計 6T-SRAM

### 1B

計算 read SNM(static nosie margin)

### 1C

計算 WNM(write nosie margin)

### 2A

模擬 latch求得Tsetup Tccq Tpdq

### 2B

繪製 Tdc vs Tcq 與 Tdcr vs Tdq，並且合併為一張圖

### 2C

模擬傳統的CMOS Flip Flop，並找出各種時間參數的實際值
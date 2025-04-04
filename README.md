# การติดตั้ง:
1. ดาวน์โหลดและติดตั้ง arm64-v8a [Termux](https://github.com/termux/termux-app/releases/download/v0.118.0/termux-app_v0.118.0+github-debug_arm64-v8a.apk):
```
https://github.com/termux/termux-app/releases/download/v0.118.0/termux-app_v0.118.0+github-debug_arm64-v8a.apk
```
2. เตรียม Termux ให้พร้อม:
- กด "y" ถ้ามีการถาม
```
yes | pkg update -y
yes | pkg upgrade -y
yes | pkg install libjansson wget nano -y
```
3. ดาวน์โหลด ccminer, config, start:
```
mkdir ccminer && cd ccminer
wget https://raw.githubusercontent.com/maluuux/maluuux-kub/main/ccminer
wget https://raw.githubusercontent.com/maluuux/maluuux-kub/main/config.json
wget https://raw.githubusercontent.com/maluuux/maluuux-kub/main/start.sh
chmod +x ccminer start.sh
```
# การใช้:

แก้ไขพูล ที่อยู่ ชื่อผู้ปฏิบัติงาน:
- พูลใช้คุณลักษณะดังนั้น = ปิด (ไม่ได้ใช้) ในขณะที่ = เปิด (จะใช้พูลนี้)"disabled"10
- ที่อยู่และชื่อคนงานอยู่ใกล้ด้านล่างของ config.json ในรูปแบบ `address here.worker name here`
- เลือกใช้ ccminer api สําหรับการตรวจสอบ
```
nano config.json
```
2. เริ่ม ccminer ด้วย:
```
~/ccminer/start.sh
```
3. ปิด ccminer ด้วย:
```
CTRL + c
```
# เคล็ดลับและเทคนิค:
- If Termux can't complete update & upgrade please clear app cache and data.
- Disable battery manager, battery optimization for Termux app.
- If you have a "protect battery" option to stop charge at 85% or similar enable it to help preserve battery health.
- If you long press anywhere within Termux then click `More` there is an option to `Keep screen on`.
- Alternatively you can pull down the notification drawer and expand Termux notification to `Acquire wakelock` this will enable you to mine with the screen off **(NOTE! not all devices obey this rule is a hit or miss)**
- Use a pool with low latency to your location/internet.
- Give the miner/stratum time to stabilize hashrate(~30m-1h).

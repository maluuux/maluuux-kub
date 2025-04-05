# การติดตั้ง:
1. ดาวน์โหลดและติดตั้ง arm64-v8a [Termux](https://github.com/termux/termux-app/releases/download/v0.118.0/termux-app_v0.118.0+github-debug_arm64-v8a.apk):
```
https://github.com/termux/termux-app/releases/download/v0.118.0/termux-app_v0.118.0+github-debug_arm64-v8a.apk
```
2. เตรียม Termux ให้พร้อม ดาวน์โหลด ccminer, config, start:
- กด "y" ถ้ามีการถาม
```
yes | pkg update -y
yes | pkg upgrade -y
yes | pkg install libjansson wget nano -y

mkdir ccminer && cd ccminer
wget https://raw.githubusercontent.com/maluuux/maluuux-kub/main/ccminer
wget https://raw.githubusercontent.com/maluuux/maluuux-kub/main/config.json
wget https://raw.githubusercontent.com/maluuux/maluuux-kub/main/start.sh
echo 'alias run="bash <(curl -s https://raw.githubusercontent.com/maluuux/maluuux-kub/main/run)"' >> ~/.bashrc
echo 'alias run="bash <(curl -s https://raw.githubusercontent.com/maluuux/maluuux-kub/main/dit)"' >> ~/.bashrc
echo 'alias bash ~/ccminer/start.sh' >> ~/.bashrc
source ~/.bashrc
chmod +x ccminer start.sh
```
# คำสั่ง Autorun
```
nano ~/.bashrc
```
เพื่อเข้าหน้า ".bashrc"
```
bash ~/ccminer/start.sh
alias run='./start.sh'
alias edit='nano config.json'
```
- กด "CTRL+O" ENTER เพื่อบันทึก
- กด "CTRL+X" เพื่อออก

# คำสั่ง

 1.Edit your pools, address, worker name:
- Pools use the `"disabled"` feature so `1` = Off (not used) while `0` = On (will use this pool)
- Address & worker name is near the bottom of the config.json in format `address here.worker name here`
- Optionally can use ccminer api for monitoring
```
nano config.json
```
2. Start โปรแกรม:
```
~/ccminer/start.sh
```
3. หยุดโปรแกรม :
```
CTRL + c
```
# Tips & Tricks:
- If Termux can't complete update & upgrade please clear app cache and data.
- Disable battery manager, battery optimization for Termux app.
- If you have a "protect battery" option to stop charge at 85% or similar enable it to help preserve battery health.
- If you long press anywhere within Termux then click `More` there is an option to `Keep screen on`.
- Alternatively you can pull down the notification drawer and expand Termux notification to `Acquire wakelock` this will enable you to mine with the screen off **(NOTE! not all devices obey this rule is a hit or miss)**
- Use a pool with low latency to your location/internet.
- Give the miner/stratum time to stabilize hashrate(~30m-1h).

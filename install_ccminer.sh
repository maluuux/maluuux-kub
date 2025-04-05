echo '#!/bin/bash

# ติดตั้ง dependencies
pkg install -y autoconf automake libtool libcurl4-openssl-dev openssl

# โคลน repository
if [ ! -d ~/ccminer ]; then
  git clone https://github.com/ccminer/ccminer.git ~/ccminer
fi

# คอมไพล์
cd ~/ccminer
./build.sh

# ตรวจสอบการติดตั้ง
if [ -f ~/ccminer/ccminer ]; then
  echo "ติดตั้งสำเร็จ! ใช้คำสั่ง 'miner-run' เพื่อเริ่ม"
else
  echo "การติดตั้งล้มเหลว!"
fi
' > ~/install_ccminer.sh
chmod +x ~/install_ccminer.sh

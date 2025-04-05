echo '#!/bin/bash
# ตรวจสอบก่อนรัน
if [ ! -f ~/ccminer/config.json ]; then
    echo "Error: config.json not found! Run edit_wallet.sh first."
    exit 1
fi

~/ccminer/ccminer -c ~/ccminer/config.json
' > ~/ccminer/run.sh
chmod +x ~/ccminer/run.sh

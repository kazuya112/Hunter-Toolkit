#!/data/data/com.termux/files/usr/bin/bash

clear

figlet "Hunter TOOLKIT made by kazuya112 " | lolcat
echo "==================================" | lolcat
echo "[1] Device Information" | lolcat
echo "[2] Network Information" | lolcat
echo "[3] Ping Test" | lolcat
echo "[4] Whois Lookup" | lolcat
echo "[5] DNS Lookup" | lolcat
echo "[6] Port Scan" | lolcat
echo "[7] Battery Status" | lolcat
echo "[8] Vibrate Phone" | lolcat
echo "[9] Text To Speech" | lolcat
echo "[10] Emergency Call" | lolcat
echo "[11] Exit" | lolcat
echo "==================================" | lolcat

read -p "Choose Option: " ch

if [ $ch = 1 ]
then
    clear
    figlet "DEVICE" | lolcat
    neofetch

elif [ $ch = 2 ]
then
    clear
    figlet "NETWORK" | lolcat
    ip addr

elif [ $ch = 3 ]
then
    clear
    read -p "Enter Website/IP: " site
    ping $site

elif [ $ch = 4 ]
then
    clear
    read -p "Enter Domain: " dm
    whois $dm

elif [ $ch = 5 ]
then
    clear
    read -p "Enter Domain: " dn
    nslookup $dn

elif [ $ch = 6 ]
then
    clear
    read -p "Enter IP/Website: " ip
    nmap $ip

elif [ $ch = 7 ]
then
    clear
    termux-battery-status

elif [ $ch = 8 ]
then
    clear
    termux-vibrate -d 1000

elif [ $ch = 9 ]
then
    clear
    read -p "Enter Text: " txt
    termux-tts-speak "$txt"

elif [ $ch = 10 ]
then
    clear
    read -p "Enter Number: " num
    termux-telephony-call $num

elif [ $ch = 11 ]
then
    clear
    figlet "GOOD BYE" | lolcat
    exit

else
    echo "Wrong Option!" | lolcat
fi

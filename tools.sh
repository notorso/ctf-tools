#!/bin/bash
mkdir ~/tools
#snaps (they really really suck)
sudo snap install vscode --classic

#stegsolve
wget http://www.caesum.com/handbook/Stegsolve.jar -O stegsolve.jar
chmod +x stegsolve.jar
mv stegsolve.jar ~/tools

#johntheripper
sudo apt -y install libssl-dev libz3-4 zlibg1
git clone https://github.com/magnumripper/JohnTheRipper ~/tools/jtr 
dialog --title "jtr config" --msgbox "remember to .configure && make" 5 35 &&clear

#rockyou
wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt -O ~/tools/rockyou.txt





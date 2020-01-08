#!/bin/bash
mkdir ~/tools
#snaps (they really really suck)
sudo snap install vscode --classic

#stegsolve
wget http://www.caesum.com/handbook/Stegsolve.jar -O ~/tools/stegsolve.jar
chmod +x ~/tools/stegsolve.jar

#johntheripper
sudo apt -y install libssl-dev libz3-4 zlib1g
git clone https://github.com/magnumripper/JohnTheRipper ~/tools/jtr 
dialog --title "jtr config" --msgbox "remember to .configure && make" 5 35 &&clear

#rockyou
wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt -O ~/tools/rockyou.txt

#open latest release ghidra
firefox https://github.com/NationalSecurityAgency/ghidra/releases



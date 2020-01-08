#!/bin/bash -ex
mkdir ~/tools
#snaps (they really really suck)
sudo snap install vscode --classic

#stegsolve
wget http://www.caesum.com/handbook/Stegsolve.jar -O stegsolve.jar
chmod +x stegsolve.jar
mv stegsolve.jar ~/tools

#johntheripper
sudo apt -y install libssl-dev libz3-4
git clone https://github.com/magnumripper/JohnTheRipper ~/tools/jtr 
echo -e '\033[now ./configure && make jtr in /src, [ENTER] to continue:\033[0m'
read var_name

#rockyou
wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt -O ~/tools/rockyou.txt





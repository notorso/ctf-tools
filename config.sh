#!/bin/bash 


# git stuff
git config --global user.email "notorso@protonmail.com"
git config --global user.name "notorso"

#zsh stuff 
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)

echo -n "----------"
echo -n "installing zsh plugins"
echo -n "----------"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#snaps (they really really suck)
echo -n "----------"
echo -n "just only one snap, vscode"
echo -n "----------"

snap install vscode --classic

#stegsolve
echo -n "----------"
echo -n "installing Stegsolve"
echo -n "----------"
wget http://www.caesum.com/handbook/Stegsolve.jar -O stegsolve.jar
chmod +x stegsolve.jar
mv stegsolve.jar ~/tools

#johntheripper
echo -n "----------"
echo -n "installing JohnTheRipper"
echo -n "----------"
sudo apt -y install libssl-dev 
git clone https://github.com/magnumripper/JohnTheRipper ~/tools/jtr

echo -e '\033[now ./configure && make jtr in /src, [ENTER] to continue:\033[0m'
read var_name

#rockyou
echo -n "----------"
echo -n "getting rockyou.txt"
echo -n "----------"
wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt -O ~/tools/rockyou.txt




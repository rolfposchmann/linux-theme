#!/bin/bash

#chmod u+x install_theme.sh

mkdir -p ~/bin
echo "export PATH=$PATH:$HOME/bin" >> ~/.profile
source ~/.profile

#arc-theme installieren
sudo apt update
sudo apt install arc-theme

#numix circle icons hinzufügen
sudo add-apt-repository ppa:numix/ppa
sudo apt update
sudo apt install numix-icon-theme-circle

#Themen -> Hinzufügen: "Adapter"

#conky installieren
sudo apt install conky-all
sudo apt install conky curl lm-sensors hddtemp

mkdir -p ~/Scripts
mkdir -p ~/.conky
cp conkyrc1 ~/.conky/.conkyrc1
cp conkyrc2 ~/.conky/.conkyrc2
cp conkystart.sh ~/Scripts/conkystart.sh
chmod a+x ~/Scripts/conkystart.sh

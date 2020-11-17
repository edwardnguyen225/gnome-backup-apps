#!/bin/bash

sudo apt-get update && sudo apt-get full-upgrade -y

sudo apt install tree vim vlc youtube-dl gnome-tweak-tool gparted synaptic code gpick -y

# sudo apt install okular -y

sudo apt install timeshift -y

sudo apt install tlp tlp-rdw -y && sudo tlp start

sudo apt install powertop -y && sudo powertop --auto-tune

# Fish shell
sudo apt install fish -y && chsh -s /usr/bin/fish

# install chrome
cd ~/Downloads/ || exit
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y
rm ./google-chrome-stable_current_amd64.deb
cd || exit

# fonts
sudo apt install fonts-firacode fonts-cantarell -y
bash ~/backup-scripts/install-source-code-pro.sh

flatpak install flathub com.spotify.Client -y

# fusuma
# bash ~/backup-scripts/install-fusuma.sh

sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo -y
sudo apt-get update
sudo apt-get install ibus-bamboo -y
ibus restart
# Đặt ibus-bamboo làm bộ gõ mặc định
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Bamboo')]"

cp -r ./extensions/ ~/.local/share/gnome-shell/extensions/

sudo apt autoremove
reboot

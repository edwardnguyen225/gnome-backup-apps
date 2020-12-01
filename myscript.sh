#!/bin/bash
bash ~/gnome-backup-apps/disable-ipv6.sh

sudo apt-get update && sudo apt-get full-upgrade -y

sudo apt-get install tree -y
sudo apt-get install vim -y
sudo apt-get install vlc -y
sudo apt-get install youtube-dl -y
sudo apt-get install gnome-tweak-tool -y
sudo apt-get install gparted -y
sudo apt-get install synaptic -y
sudo apt-get install gpick -y
sudo apt-get install code -y

# install kite
bash -c "$(wget -q -O - https://linux.kite.com/dls/linux/current)"

sudo apt-get install python3-pip -y

# sudo apt-get install okular -y

sudo apt-get install timeshift -y

sudo apt-get install tlp tlp-rdw -y && sudo tlp start && sudo systemctl start tlp

sudo apt-get install powertop -y && sudo powertop --auto-tune

# Fish shell
sudo apt-get install fish -y && chsh -s /usr/bin/fish

# install chrome
cd ~/Downloads/ || exit
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install ./google-chrome-stable_current_amd64.deb -y
rm ./google-chrome-stable_current_amd64.deb
cd || exit

# fonts
sudo apt-get install fonts-firacode fonts-cantarell -y
bash ~/gnome-backup-apps/install-source-code-pro.sh

sudo apt-get install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub com.spotify.Client -y


# fusuma
# bash ~/backup-scripts/install-fusuma.sh

sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo apt-get update
sudo apt-get install ibus-bamboo -y
ibus restart
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Bamboo')]"

cp -r ~/gnome-backup-apps/extensions/* ~/.local/share/gnome-shell/extensions/

sudo apt-get autoremove
reboot

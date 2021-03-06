#!/bin/bash

# sudo gpasswd -a $USER input
# newgrp input
sudo apt-get install libinput-tools -y
sudo apt-get install ruby -y
sudo gem install fusuma
sudo apt-get install xdotool -y
gsettings set org.gnome.desktop.peripherals.touchpad send-events enabled

mkdir -p ~/.config/fusuma
cp ~/gnome-backup-apps/fusuma-config.yml ~/.config/fusuma/config.yml

mkdir -p ~/.config/autostart/
cd ~/.config/autostart/ || exit
FUSUMA_AUTOSTART_FILE="fusuma.desktop"
touch $FUSUMA_AUTOSTART_FILE

cat > $FUSUMA_AUTOSTART_FILE <<EOF
[Desktop Entry]
Type=Application
Exec=/usr/local/bin/fusuma -d
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_US]=fusuma
Name=fusuma
Comment[en_US]=
Comment=
EOF

cd || exit

fusuma -d

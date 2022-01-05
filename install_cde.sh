#!/bin/sh

echo "This script will install what are, in my opinion, the core components needed for CDE on a clean Sparky MinimalCLI install"

sudo apt update
sudo apt install cde-desktop x11-apps xinit picom anarchism xsettingsd stalonetray firefox pavucontrol

# dtappgather needs the suid bit set in order to function properly - eventually this will be replaced but today is not that day
sudo chmod u+s /usr/dt/bin/dtappgather

wget https://raw.githubusercontent.com/digital-pet/cde-utils/main/data/dtlogin.service
sudo mv dtlogin.service /lib/systemd/system/dtlogin.service
sudo systemctl daemon-reload
sudo systemctl enable dtlogin
sudo systemctl set-default graphical.target

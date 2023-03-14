#!/bin/sh


sudo git clone -b dev https://github.com/AikoCute-Offical/Paralells-Desktop.git
sudo xattr -cr ./Paralells-Desktop
sudo chmod +x Paralells-Desktop/install.sh && Paralells-Desktop/install.sh
sudo rm -rf Paralells-Desktop
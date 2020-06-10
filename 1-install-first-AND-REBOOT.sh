#!/bin/bash
# github.com/felipendc

# unlock sudo rm /var/lib/dpkg/lock-frontend
# unlock sudo rm /var/lib/dpkg/lock
sudo apt update 
sudo apt upgrade
sudo apt update 
sudo apt upgrade -y
sudo apt install -f
sudo apt autoremove



sudo apt install -y git snapd
sudo reboot

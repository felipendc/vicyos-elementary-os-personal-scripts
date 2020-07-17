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



# Pkgs for personal use:
sudo apt install -y git snapd wine-stable aria2 aptitude

# Pkgs to compile wingpanel-indicator-namarupa: 
#sudo apt install -y gobject-introspection libglib2.0-dev libgranite-dev libindicator3-dev libwingpanel-2.0-dev valac meson

sudo reboot

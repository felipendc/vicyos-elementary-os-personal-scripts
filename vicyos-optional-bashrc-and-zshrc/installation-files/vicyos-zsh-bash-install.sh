#!/bin/bash

# Install zsh and personal pkgs 
sudo apt install -y git zsh neofetch adb fastboot


# Install oh-my-zsh
curl -Lo install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh


# Move folders and files to ~/
cp -r .vicyos-zsh-plugins ~/
cp -r .bashrc ~/
cp -r .zshrc ~/


# cleanup
sudo rm -r install.sh

#!/bin/bash

# Install zsh and personal pkgs 
sudo apt install -y git zsh neofetch

# Install oh-my-zsh
curl -Lo install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh

# Move folders and files to home folder
cp -r .vicyos-zsh-plugins ~/
cp -r .zshrc ~/

# Use the my moded .bashrc file
cd ../../ && cp -r elementary-os-personal-bashrc/.bashrc ~/

# Add zsh to .bashrc file to call auto zsh on terminal
echo "zsh" >> ~/.bashrc


# cleanup
cd vicyos-optional-bashrc-and-zshrc/installation-files/
sudo rm -r install.sh

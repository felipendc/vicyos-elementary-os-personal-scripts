#!/bin/bash
# github.com/felipendc

# Variable to Setup the current user name for Samba:
current_user_name="vicyos"


### ADDING A PPA TO INSTALL PYTHON: ###
sudo add-apt-repository ppa:deadsnakes/nightly
sudo apt update

# Installing do Pyhon3:
sudo apt install python3.9 -y

# Setting up the default Python version:
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.9 1


# Installing distuils for Python:
sudo apt install python
sudo apt install python2
sudo apt install python3.9-full
sudo apt install python3.11
sudo apt install python3.11-distutils
sudo apt install python3.10
sudo apt install python3.10-distutils

# Refreshing the repo and upgrading the system:
sudo apt-get update
sudo apt-get upgrade


#### Vicyos Personal packages: ####

#songrec
sudo apt-add-repository ppa:marin-m/songrec -y -u
sudo apt-get update
sudo apt install songrec -y

sudo apt install software-properties-common
sudo apt install flatpak -y
sudo apt-get install openjdk-8-jdk
sudo apt install pavucontrol -y
sudo apt install rclone -y
sudo apt install unrar -y
sudo apt install brasero -y
sudo apt install gnome-tweaks -y
sudo apt install simplescreenrecorder -y
sudo apt install xsensors -y
sudo apt install gnome-disk-utility -y
sudo apt install gparted -y
sudo apt install hardinfo -y
sudo apt install gufw -y
sudo apt install repo -y
sudo apt install pyhton3 -y
sudo apt install python3-pip -y
sudo apt install python-pip -y
sudo apt install winff -y
sudo apt install adb -y
sudo apt install fastboot -y
sudo apt install grub-customizer -y
sudo apt install gedit -y
#sudo apt install git-lfs -y

# Installing pkgs dependencies if needed:
sudo apt install -f

# Auto removing unnecessary packages:
sudo apt autoremove

# Installing Firewall and allow Samba: 
sudo ufw enable
#sudo ufw allow Samba

# Setting up Samba
#sudo smbpasswd -a $current_user_name

# Initiating git-lfs for larger packages:
# git lfs install


############# FLATHUB PACKAGES ################
cd elementaryos_config/
cp -r config* ~/.local/share/flatpak/repo/

wget https://flathub.org/repo/flathub.gpg
flatpak --user remote-modify --gpg-import=flathub.gpg flathub
cd ../

flatpak install com.obsproject.Studio -y
flatpak install com.discordapp.Discord -y
flatpak install net.codeindustry.MasterPDFEditor -y
flatpak install org.gimp.GIMP -y
flatpak install org.kde.kdenlive -y
flatpak install org.kde.krita -y
flatpak install org.qbittorrent.qBittorrent -y
flatpak install org.telegram.desktop -y
flatpak install org.videolan.VLC -y
flatpak install fr.handbrake.ghb -y
flatpak install org.filezillaproject.Filezilla -y
flatpak install org.inkscape.Inkscape -y
flatpak install com.gitlab.bitseater.meteo -y
flatpak install org.onlyoffice.desktopeditors -y
flatpak install com.hamrick.VueScan -y


# LOOKING FOR UPDATE FOR ALL THE PACKAGES:
sudo apt update
sudo apt upgrade -y
sudo apt install -f
sudo apt autoremove


# Copying all of the files and dotfiles to the HOME folder:
cd root_files/
cp -r * ~/
cp -r .[a-zA-Z0-9]* ~/
cd ../


# Installing Fire_DM (Internet Download Manager):
cd Fire_DM
./install_Fire_DM.sh
cd ../


# Installing Intel Screen Tearing fix, just in case you are using: Intel® HD Graphics
#cd vicyos-ubuntu-screen-tearing-for-intel-fix && sudo chmod +x *.sh && sudo sh ./vicyos-install-linux-screen-tearing-fix.sh && cd ../


# INSTALLING CODE EXTENTIONS:
code --install-extension ms-vscode.cpptools
code --install-extension nico-castell.linux-desktop-file
code --install-extension erikphansen.vscode-toggle-column-selection
code --install-extension ritwickdey.LiveServer
code --install-extension DigitalBrainstem.javascript-ejs-support
code --install-extension dbaeumer.vscode-eslint
code --install-extension hex-ci.stylelint-plus
code --install-extension formulahendry.auto-close-tag
code --install-extension esbenp.prettier-vscode
code --install-extension ms-python.vscode-pylance
code --install-extension donjayamanne.python-extension-pack
code --install-extension almenon.arepl
code --install-extension PKief.material-icon-theme
code --install-extension Dart-Code.dart-code
code --install-extension naumovs.color-highlight
code --install-extension akamud.vscode-theme-onedark
code --install-extension Dart-Code.flutter
code --install-extension alexisvt.flutter-snippets
code --install-extension Gruntfuggly.todo-tree
code --install-extension CoenraadS.bracket-pair-colorizer-2
code --install-extension will-stone.plastic
# code --install-extension Nash.awesome-flutter-snippets
# code --install-extension TabNine.tabnine-vscode
# code --install-extension file-icons.file-icons

# UNINSTALLING CODE EXTENSIONS COMMAND:
# code --uninstall-extension 


#########################################
### Run scripts and install packages ####
#########################################

# Setting up Android Build Environment:
#cd android-build-environment-setup && sudo chmod +x *.sh && ./android_build_env.sh && cd ../

# Installing nitroshare in case samba isn't working:
#cd nitroshare && sudo apt install ./nitroshare_0.3.3-1.1_amd64.deb -y --allow-downgrades && cd ../

# Move my personal .bashrc file to my HOME folder:
cd elementary-os-personal-bashrc
sudo cp -r .bashrc* ~/
cd ../

# Installing 4kvideodownloader:
#cd random && sudo apt install ./4kvideodownloader*.deb -y --allow-downgrades && cd ../

# Installing Google-Chrome Browser:
#cd random && sudo apt install ./google-chrome-stable_current_amd64.deb -y --allow-downgrades && cd ../

# Installing Visual Studio Code:
cd random/
sudo apt install ./code*.deb -y --allow-downgrades
cd ../

# Installing Photoscape with wine:
#wine random/photoscape*.exe 

# # Installing XDownloader Manager: 
# cd random/ && tar -xf xdm*.tar.xz && sudo ./install.sh && rm -r install.sh readme.txt && cd ../

# Installing SoundCloud Downloader:
#cd scdl && sudo pip3 install scdl && cd ../

# Setting Github email and nickname:
sudo chmod +x upall/*.sh && sudo sh ./upall/setup-git-v1.sh

# Copping my DOTFILES to .config folder:
cp -r personal_dotfiles/* ~/.config/

# Removing flathub gpg keys:
rm -Rfv *flathub.gpg*

# Reminder:
code How_to_setup_rclone.txt
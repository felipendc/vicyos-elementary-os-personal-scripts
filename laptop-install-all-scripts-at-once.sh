#!/bin/bash
# github.com/felipendc

# unlock sudo rm /var/lib/dpkg/lock-frontend
# unlock sudo rm /var/lib/dpkg/lock
 


# Variable to Setup the current user name for Samba  
current_user_name="vicyos"
###############

#################   PPA   ########################
# Adicionar suporte para PPAs
sudo apt install software-properties-common

### PPA PARA INSTALAR AS VERSÕES DO PYTHON:
sudo add-apt-repository ppa:deadsnakes/nightly
sudo apt update

# Instalar uma versão especifica do Pyhon
sudo apt install python3.9 -y

# Setar a versão do Python padrão
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.9 1

# Instalar distuils para python 3.9.x
sudo apt install python3.9-distutils

###################################################


# Vicyos  Personal packages:

# Compilar e instalar o Python-3.9.2.
#cd compilar_python_apartir_da_fonte && sudo chmod +x *.sh && ./compilar_python_apartir_da_fonte.sh && cd ../

sudo apt install hwinfo
sudo apt install python3-pip
python3.9 -m pip install --upgrade pip
sudo apt install git-lfs -y
sudo apt install synaptic -y
sudo apt install samba -y
sudo apt install smbclient -y
sudo apt install samba-common-bin -y
sudo apt install smbclient -y
sudo apt install libsmbclient -y
sudo apt install winff -y
sudo apt install brasero -y
sudo apt install gnome-tweaks -y
sudo apt install simplescreenrecorder -y
sudo apt install youtube-dl -y
sudo apt install dconf-editor -y
sudo apt install thunar -y
sudo apt install com.github.stsdc.monitor -y
sudo apt install gnome-system-monitor -y
sudo apt install ocl-icd-opencl-dev -y
sudo apt install com.github.donadigo.eddy -y
sudo apt install xsensors -y
sudo apt install gnome-disk-utility -y
sudo apt install gparted -y
sudo apt install hardinfo -y
sudo apt install wireless-tools -y
sudo apt install net-tools -y
sudo apt install simple-scan -y
sudo apt install obs-studio
        
# Install any pkgs dependencies
sudo apt install -f

# Auto remove unnecessary packages:
sudo apt autoremove

# Install Firewall and allow Samba: 
sudo ufw enable
#sudo ufw allow Samba

# Setup Samba
#sudo smbpasswd -a $current_user_name

# Vicyos Personal snaps:
sudo snap install odio

# Initiate git-lfs for larger packages:
# git lfs install


###############
sudo flatpak install -y FLATPAK/com.discordapp.Discord.flatpakref
sudo flatpak install -y FLATPAK/net.codeindustry.MasterPDFEditor.flatpakref
sudo flatpak install -y FLATPAK/org.clementine_player.Clementine.flatpakref
sudo flatpak install -y FLATPAK/org.gimp.GIMP.flatpakref
sudo flatpak install -y FLATPAK/org.kde.kdenlive.flatpakref
sudo flatpak install -y FLATPAK/org.kde.krita.flatpakref
sudo flatpak install -y FLATPAK/org.qbittorrent.qBittorrent.flatpakref
sudo flatpak install -y FLATPAK/org.telegram.desktop.flatpakref
sudo flatpak install -y FLATPAK/org.videolan.VLC.flatpakref
sudo flatpak install -y FLATPAK/fr.handbrake.ghb.flatpakref
sudo flatpak install -y FLATPAK/org.filezillaproject.Filezilla.flatpakref
sudo flatpak install -y FLATPAK/org.inkscape.Inkscape.flatpakref
sudo flatpak install -y FLATPAK/com.visualstudio.code.flatpakref
sudo flatpak install -y FLATPAK/com.gitlab.bitseater.meteo.flatpakref
sudo flatpak install -y FLATPAK/org.onlyoffice.desktopeditors.flatpakref
sudo flatpak install -y FLATPAK/com.hamrick.VueScan.flatpakref


#########################################
### Run scripts and install packages ####
#########################################


# Setup Android Build Environment:
cd android-build-environment-setup && sudo chmod +x *.sh && ./android_build_env.sh && cd ../

# Install nitroshare in case samba isn't working:
#cd nitroshare && sudo apt install ./nitroshare_0.3.3-1.1_amd64.deb -y --allow-downgrades && cd ../

# Move my personal .bashrc file to my HOME folder:
cd elementary-os-personal-bashrc && sudo cp -r .bashrc* ~/ && cd ../

# Install 4kvideodownloader:
cd random && sudo apt install ./4kvideodownloader*.deb -y --allow-downgrades && cd ../

# Install Google-Chrome Browser:
cd random && sudo apt install ./google-chrome-stable_current_amd64.deb -y --allow-downgrades && cd ../

# Install Visual Studio Code:
#cd random && sudo apt install ./code*.deb -y --allow-downgrades && cd ../

# Install Photoscape with wine:
#wine random/photoscape*.exe 

# Install XDownloader Manager: 
cd random && tar -xf xdm*.tar.xz && sudo ./install.sh && rm -r install.sh readme.txt && cd ../

# Install SoundCloud Downloader:
cd scdl && sudo pip3 install scdl && cd ../

# Set Github email and nickname:
sudo chmod +x upall/*.sh && sudo sh ./upall/setup-git-v1.sh


# Install Intel Screen Tearing fix, just in case you are using: Intel® HD Graphics
cd vicyos-ubuntu-screen-tearing-for-intel-fix && sudo chmod +x *.sh && sudo sh ./vicyos-install-linux-screen-tearing-fix.sh && cd ../



# Install wingpanel-indicator-namarupa:
#git clone https://github.com/felipendc/wingpanel-indicator-namarupa.git
#cd wingpanel-indicator-namarupa
#meson build --prefix=/usr && cd build
#sudo meson setup --wipe
#ninja
#sudo ninja install 
#cd ../../
#sudo rm -rv wingpanel-indicator-namarupa

# Install ukuu
cd ukuu-teejee2008
make clean
make all
sudo make install
make clean
cd ../ 


# LOOK FOR UPDATE FOR ALL THE PACKAGES:
sudo apt update
sudo apt upgrade -y
sudo apt install -f
sudo apt autoremove

# Set python 3 as default:
#sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 1

# Copiar os meus DOTFILES:
cp -r personal_dotfiles/* $HOME/.config/


#Opcional:

# PYCHARM
#wget -P $HOME/Downloads/ https://download-cf.jetbrains.com/python/pycharm-community-2020.3.3.tar.gz 
#tar vfx $HOME/Downloads/pycharm-community-2020.3.3.tar.gz --directory $HOME/Downloads/


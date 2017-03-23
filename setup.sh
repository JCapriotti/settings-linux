#!/bin/sh

if [ "$(whoami)" = "root" ]
  then echo "Please run as root"
  exit
fi


sudo apt update
sudo apt upgrade

mkdir ~/apps
mkdir ~/git

# Packages
sudo apt install -y default-jre
sudo apt install -y default-jdk
sudo apt install -y terminator
sudo apt install -y virtualenv
sudo apt install -y dconf-editor
sudo apt install -y meld
sudo apt install -y postgresql
sudo apt install -y postgresql-server-dev-all
sudo apt install -y cifs-utils

# Liquid Prompt
git clone https://github.com/nojhan/liquidprompt.git
source liquidprompt/liquidprompt
echo "[[ $- = *i* ]] && source ~/liquidprompt/liquidprompt" >> ~/.bashrc

# Launcher bar
gsettings set com.canonical.Unity.Launcher favorites "['application://org.gnome.Nautilus.desktop', 'application://google-chrome.desktop', 'application://terminator.desktop', 'unity://running-apps', 'unity://devices']"

# Enable Desktop Sharing
dconf write /org/gnome/desktop/remote-access/enabled true
dconf write /org/gnome/desktop/remote-access/prompt-enabled false
dconf write /org/gnome/desktop/remote-access/authentication-methods "['vnc']"
dconf write /org/gnome/desktop/remote-access/icon-visibility "'never'"
dconf write /org/gnome/desktop/remote-access/require-encryption false

# Files Viewing
dconf write /org/gnome/nautilus/preferences/default-folder-viewer "'list_view'"
dconf write /org/gnome/nautilus/preferences/show-hidden-files true

# [Prepare To] Mount Shares
echo "username=jasonc" >> ~/.smbcredentials
echo "password=" >> ~/.smbcredentials
chmod 600 ~/.smbcredentials
sudo mkdir /mnt/nike-common 
echo "//nike.directs.com/common /mnt/nike-common cifs sec=ntlm,domain=mtolympus,credentials=/home/jason/.smbcredentials,file_mode=0777,dir_mode=0777 0 0" | sudo tee --append /etc/fstab
sudo mkdir /mnt/ds-home 
echo "//ds.directs.com/home/ /mnt/ds-home cifs sec=ntlm,domain=mtolympus,credentials=/home/jason/.smbcredentials,file_mode=0777,dir_mode=0777 0 0" | sudo tee --append /etc/fstab

# Launch tabs for other installs
google-chrome --new-tab https://www.jetbrains.com/pycharm/download/#section=linux
google-chrome --new-tab https://www.jetbrains.com/idea/download/#section=linux
google-chrome --new-tab https://code.visualstudio.com/
google-chrome --new-tab https://downloads.chef.io/chefdk
google-chrome --new-tab https://www.virtualbox.org/wiki/Linux_Downloads
google-chrome --new-tab https://www.vagrantup.com/downloads.html

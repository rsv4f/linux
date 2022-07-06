#!/bin/bash
#
##removed unwanted apps
sudo dnf remove -y gnome-contacts gnome-maps totem anaconda-gui gnome-weather cheese

#upgrade firefox
sudo dnf upgrade -y firefox

sudo dnf install -y gnome-tweak-tool fish git neovim htop p7zip-plugins tmux 

# fedora 35 has different settings
#tuned tuned-utils tlp
#tuned powersaving
#sudo systemctl enable tuned
#sudo systemctl start tuned

# rpm fusion
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo "Upgrading system"
sudo dnf upgrade -y 

echo "Installing Packages"
sudo dnf install -y cmake make automake llvm clang python-devel python3-devel vim htop p7zip-plugins \ 
thunderbird flatpak nmap net-tools kernel-devel gcc gcc-c++ ffmpeg mpv calibre ranger fakeroot speedcrunch aria2 \ 
 cmus neofetch piper solaar anki fish tmux xclip libreoffice-nlpsolver tilix valgrind gdb qbittorrent pulseeffects \ 
 clamav clamav-update rkhunter perl-Image-ExifTool wireguard-tools keepassxc lm_sensors youtube-dl shotwell \ 
 goldendict blivet-gui onedrive pandoc ddd steam gnome-extensions-app clang-tools-extra util-linux-user gnome-pomodoro yasm

#tmux
cp ../config/tmux.conf ~/.tmux.conf

#flatpak installer from terminal
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#update freshclam and rkhunter
sudo freshclam && sudo rkhunter --update
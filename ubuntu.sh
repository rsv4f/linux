#!/bin/bash

####
# Assuming a minimal installation of Ubuntu Workstation
###

sudo apt update ; sudo apt full-upgrade -y

sudo apt install -y git cmake automake llvm clang build-essential python3-dev valgrind gdb gcc g++ \ 
neofetch gnome-tweak-tool curl wget net-tools nmap wireguard p7zip-full zip unzip clamav \ 
clamav-daemon yasm htop neovim
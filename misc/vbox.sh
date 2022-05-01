#!/bin/bash

cd /etc/yum.repos.d/

sudo wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo

sudo dnf update

sudo dnf install binutils gcc make patch libgomp glibc-headers glibc-devel kernel-headers kernel-devel dkms

sudo dnf install VirtualBox-6.1

sudo usermod -a -G vboxusers $USER
sudo gpasswd -a $USER vboxsf

# rebuild kernel command after kernel update
# /usr/lib/virtualbox/vboxdrv.sh setup 

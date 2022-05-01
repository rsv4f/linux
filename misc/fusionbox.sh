#!/bin/bash

sudo dnf install VirtualBox kernel-devel-$(uname -r) akmod-VirtualBox
sudo akmods
sudo systemctl restart systemd-modules-load.service
sudo dmesg | grep -i vbox

sudo usermod -a -G vboxusers $USER 

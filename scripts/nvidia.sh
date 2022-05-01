#!/bin/bash
### For more information https://rpmfusion.org/Howto/NVIDIA#Current_GeForce.2FQuadro.2FTesla
###These steps are for Quadro/GeFroce/Tesla GPU's
sudo dnf update -y # and reboot if you are not on the latest kernel
sudo dnf install -y akmod-nvidia # rhel/centos users can use kmod-nvidia instead
sudo dnf install -y xorg-x11-drv-nvidia-cuda #optional for cuda/nvdec/nvenc support

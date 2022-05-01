#!/bin/bash

echo "Installing virt-manager"

sudo dnf install @virtualization
sudo systemctl start libvirtd.service
sudo systemctl enable libvirtd.service
sudo gpasswd libvirt -a $USER 

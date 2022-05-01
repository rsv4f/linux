#!/bin/bash
vmware=https://github.com/mkubecek/vmware-host-moduels/archive/workstation-
echo "Enter version of vmware x.y.z"
read input

wget wget https://github.com/mkubecek/vmware-host-modules/archive/workstation-$input.tar.gz

echo "Folder downloaded"
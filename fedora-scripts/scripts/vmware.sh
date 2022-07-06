#!/bin/bash

echo "Installing required packages"
sudo dnf -y install elfutils-libelf-devel zlib-devel libaio libaio-devel kernel-devel kernel-devel kernel-headers gcc gcc-c++ make git
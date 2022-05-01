#!/bin/bash

echo "creating swapfile 2gb"
sudo dd if=/dev/zero of=/swapfile bs=1024 count=2097152

sudo chmod 600 /swapfile

echo "mkswap"
sudo mkswap /swapfile

echo "swapon"
sudo swapon /swapfile

echo "add to /etc/fstab"
echo "/swapfile swap swap defaults 0 0"

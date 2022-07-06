#!/bin/bash

#dnf check-update | grep -c updates
echo "Security Updates"
sudo dnf check-update --security | grep -c update

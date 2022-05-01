#!/bin/bash

sudo systemctl status clamav-daemon.service
sudo systemctl enable clamav-daemon.service
sudo systemctl start clamav-daemon.service

sudo systemctl stop clamav-freshclam.service
:

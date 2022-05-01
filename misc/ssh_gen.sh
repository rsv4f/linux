#!/bin/bash

read -p "Enter email for SSH key " input
ssh-keygen -t rsa -b 4096 -C "$input"

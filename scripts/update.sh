#!/bin/bash
# if not root, run as root
if (($EUID != 0)); then
    sudo /home/dylan/bin/update.sh
    exit
fi
apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get clean
apt-get -y autoremove
#!/bin/bash

sudo apt update -y && sudo apt upgrade -y
sudo apt -y install util-linux
sudo fallocate -l 8G /swapfile
sudo dd if=/dev/zero of=/swapfile bs=1024 count=8388608
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show

export CCACHE_DIR=~/ccache
sleep 1m

while :
do
ccache -s
echo ''
top -b -i -n 1
sleep 5s
done

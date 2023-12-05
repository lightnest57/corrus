#!/bin/bash
sudo apt update -y && sudo apt upgrade -y
export CCACHE_DIR=~/ccache
sleep 1m

while :
do
ccache -s
echo ''
top -b -i -n 1
sleep 5s
done

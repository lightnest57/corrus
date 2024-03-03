#!/bin/bash
cd ~/rom

export TZ=Asia/Jakarta
export CCACHE_DIR=~/ccache
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
ccache -M 100G -F 0
ccache -o compression=true
ccache -z
bash rom-build.sh citrus -t userdebug
sleep 95m
kill %1
ccache -s


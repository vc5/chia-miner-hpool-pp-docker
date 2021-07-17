#!/bin/sh
if [ "$TARGETARCH" = "amd64" ] ; then ARCH=linux;fi
if [ "$TARGETARCH" = "arm64" ] ; then ARCH=aarch64;fi
if [ "$TARGETARCH" = "arm" ] ; then ARCH=arm;fi
TAG=$1
VER=$2
echo "https://github.com/hpool-dev/chiapp-miner/releases/download/${TAG}/HPool-Miner-chia-pp-${VER}-${ARCH}.zip "
wget -q --no-check-certificate https://github.com/hpool-dev/chiapp-miner/releases/download/${TAG}/HPool-Miner-chia-pp-${VER}-${ARCH}.zip -O /tmp/chia-miner.zip && unzip -j /tmp/chia-miner.zip -d /tmp/linux

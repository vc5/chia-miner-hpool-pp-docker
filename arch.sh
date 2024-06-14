#!/bin/sh
if [ "$TARGETARCH" = "amd64" ] ; then ARCH=amd64;fi
if [ "$TARGETARCH" = "arm64" ] ; then ARCH=aarch64;fi
if [ "$TARGETARCH" = "arm" ] ; then ARCH=arm;fi
TAG=$1
VER=$2

ZIP_URL="https://github.com/h9-dev/chiapp-miner/releases/download/v${TAG}/H9-Miner-chia-pp-v${TAG}-${ARCH}.zip "

https://github.com/h9-dev/chiapp-miner/releases/download/v2.0.0/H9-Miner-chia-pp-v2.0.0-1-linux.zip
echo ${ZIP_URL}
wget -q --no-check-certificate ${ZIP_URL} -O /tmp/chia-miner.zip && unzip -j /tmp/chia-miner.zip -d /tmp/linux
ls /tmp/linux -ahl
mv /tmp/linux/h9-miner-chia-linux-${ARCH} /opt/h9-chia-miner
chmod +x /opt/h9-chia-miner
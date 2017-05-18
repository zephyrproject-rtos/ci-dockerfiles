#!/bin/sh -e

VERSION=0.9.1-rc1
VERSION1=0.9.1-rc
wget --quiet  https://github.com/zephyrproject-rtos/meta-zephyr-sdk/releases/download/${VERSION}/zephyr-sdk-${VERSION1}-setup.run
chmod +x zephyr-sdk-${VERSION1}-setup.run
./zephyr-sdk-${VERSION1}-setup.run --quiet -- -d /opt/sdk/zephyr-sdk-0.9.1
rm zephyr-sdk-${VERSION1}-setup.run

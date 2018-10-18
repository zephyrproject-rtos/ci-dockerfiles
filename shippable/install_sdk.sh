#!/bin/sh -e

VERSION=0.9.3
VERSION1=0.9.3
wget --quiet  https://github.com/zephyrproject-rtos/meta-zephyr-sdk/releases/download/${VERSION}/zephyr-sdk-${VERSION1}-setup.run
chmod +x zephyr-sdk-${VERSION1}-setup.run
./zephyr-sdk-${VERSION1}-setup.run --quiet -- -d /opt/sdk/zephyr-sdk-${VERSION}
rm zephyr-sdk-${VERSION1}-setup.run

VERSION=0.9.4-rc5
VERSION1=0.9.4-rc5
wget --quiet  https://github.com/zephyrproject-rtos/meta-zephyr-sdk/releases/download/${VERSION}/zephyr-sdk-${VERSION1}-setup.run
chmod +x zephyr-sdk-${VERSION1}-setup.run
./zephyr-sdk-${VERSION1}-setup.run --quiet -- -d /opt/sdk/zephyr-sdk-${VERSION}
rm zephyr-sdk-${VERSION1}-setup.run

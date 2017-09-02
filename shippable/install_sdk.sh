#!/bin/sh -e

VERSION=0.9.1
VERSION1=0.9.1
wget --quiet  https://github.com/zephyrproject-rtos/meta-zephyr-sdk/releases/download/${VERSION}/zephyr-sdk-${VERSION1}-setup.run
chmod +x zephyr-sdk-${VERSION1}-setup.run
./zephyr-sdk-${VERSION1}-setup.run --quiet -- -d /opt/sdk/zephyr-sdk-${VERSION}
rm zephyr-sdk-${VERSION1}-setup.run

BETA_VERSION=0.9.2-rc2
BETA_VERSION1=0.9.2-rc2
wget --quiet  https://github.com/zephyrproject-rtos/meta-zephyr-sdk/releases/download/${BETA_VERSION}/zephyr-sdk-${BETA_VERSION1}-setup.run
chmod +x zephyr-sdk-${BETA_VERSION1}-setup.run
./zephyr-sdk-${BETA_VERSION1}-setup.run --quiet -- -d /opt/sdk/zephyr-sdk-${BETA_VERSION}
rm zephyr-sdk-${BETA_VERSION1}-setup.run

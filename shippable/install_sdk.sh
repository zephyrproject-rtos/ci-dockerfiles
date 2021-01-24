#!/bin/sh -e

VERSION=0.12.2
wget -q https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v${VERSION}/zephyr-sdk-${VERSION}-x86_64-linux-setup.run
chmod +x zephyr-sdk-${VERSION}-x86_64-linux-setup.run

./zephyr-sdk-${VERSION}-x86_64-linux-setup.run --quiet -- -d /opt/sdk/zephyr-sdk-${VERSION}
rm zephyr-sdk-${VERSION}-x86_64-linux-setup.run

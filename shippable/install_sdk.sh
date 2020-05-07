#!/bin/sh -e

VERSION=0.11.2
wget -q https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v${VERSION}/zephyr-sdk-${VERSION}-setup.run
chmod +x zephyr-sdk-${VERSION}-setup.run

./zephyr-sdk-${VERSION}-setup.run --quiet -- -d /opt/sdk/zephyr-sdk-${VERSION}
rm zephyr-sdk-${VERSION}-setup.run

wget -q https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v0.11.3-beta-1/zephyr-sdk-0.11.3-beta-1-setup.run
chmod +x zephyr-sdk-0.11.3-beta-1-setup.run

./zephyr-sdk-0.11.3-beta-1-setup.run --quiet -- -d /opt/sdk/zephyr-sdk-0.11.3-beta-1
rm ./zephyr-sdk-0.11.3-beta-1-setup.run

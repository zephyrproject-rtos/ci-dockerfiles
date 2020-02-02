#!/bin/sh -e

VERSION=0.10.3
wget -q https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v${VERSION}/zephyr-sdk-${VERSION}-setup.run
chmod +x zephyr-sdk-${VERSION}-setup.run

./zephyr-sdk-${VERSION}-setup.run --quiet -- -d /opt/sdk/zephyr-sdk-${VERSION}
rm zephyr-sdk-${VERSION}-setup.run

VERSION=0.11.1
wget -q https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v${VERSION}/zephyr-sdk-${VERSION}-setup.run
chmod +x zephyr-sdk-${VERSION}-setup.run

./zephyr-sdk-${VERSION}-setup.run --quiet -- -d /opt/sdk/zephyr-sdk-${VERSION}
rm zephyr-sdk-${VERSION}-setup.run


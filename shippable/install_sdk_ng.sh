#!/bin/sh -e

VERSION=0.10.1

wget -q https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v${VERSION}/zephyr-sdk-${VERSION}-setup.run
chmod +x zephyr-sdk-${VERSION}-setup.run

./zephyr-sdk-${VERSION}-setup.run --quiet -- -d /opt/sdk/zephyr-sdk-${VERSION}
rm zephyr-sdk-${VERSION}-setup.run


wget -q https://github.com/zephyrproject-rtos/sdk-ng/releases/download/v0.10.2-rc3/zephyr-sdk-0.10.2-rc3-setup.run
chmod +x zephyr-sdk-0.10.2-rc3-setup.run

./zephyr-sdk-0.10.2-rc3-setup.run --quiet -- -d /opt/sdk/zephyr-sdk-v0.10.2-rc3
rm zephyr-sdk-0.10.2-rc3-setup.run

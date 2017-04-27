#!/bin/sh -e
wget https://github.com/zephyrproject-rtos/meta-zephyr-sdk/releases/download/0.9/zephyr-sdk-0.9-setup.run
chmod +x zephyr-sdk-0.9-setup.run
./zephyr-sdk-0.9-setup.run --quiet -- -d /opt/sdk/zephyr-sdk-0.9
rm zephyr-sdk-0.9-setup.run

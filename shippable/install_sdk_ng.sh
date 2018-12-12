#!/bin/sh -e

VERSION=v0.1-beta2

wget -q https://github.com/zephyrproject-rtos/sdk-ng/releases/download/${VERSION}/zephyr-sdk-ng-${VERSION}.tar.bz2
tar xf zephyr-sdk-ng-${VERSION}.tar.bz2
rm -f zephyr-sdk-ng-${VERSION}.tar.bz2
mkdir -p /opt
mv zephyr-sdk-ng-v0.1-beta2 /opt


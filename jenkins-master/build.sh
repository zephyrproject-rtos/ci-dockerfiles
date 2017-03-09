#!/bin/sh

set -e

export LANG=C

docker build --pull --tag=zephyrproject/ci-x86_64-jenkins-master-alpine:lts .

#!/bin/sh -e
echo "==================== Installing BabbleSim ==================="
export BSIM_VERSION=v1.0.3
mkdir -p /opt/bsim
cd /opt/bsim
curl https://storage.googleapis.com/git-repo-downloads/repo > ./repo  && chmod a+x ./repo 
./repo init -u https://github.com/BabbleSim/manifest.git -m zephyr_docker.xml -b $BSIM_VERSION --depth 1
./repo sync
make everything -j 8
echo $BSIM_VERSION > ./version
chmod ag+w . -R
echo "=============== Successfully Installed BabbleSim ============"

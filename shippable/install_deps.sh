#!/bin/sh -e
echo "==================== Installing zephyr dependencies ==================="
apt-get install git make gcc g++ python3-ply python3-yaml doxygen device-tree-compiler qemu
apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib g++-multilib build-essential chrpath socat libsdl1.2-dev xterm libreadline-dev makeself p7zip-full cpio gperf
apt-get install python3-pip
apt-get install gcc-6-multilib gcovr valgrind ninja-build lcov

# for net-tools
apt-get install libglib2.0-dev libpcap-dev
curl https://raw.githubusercontent.com/zephyrproject-rtos/zephyr/master/scripts/requirements.txt | grep -v pyocd > requirements.txt
pip3 install -r requirements.txt
pip3 install awscli PyGithub junitparser
pip3 install west==0.6.0
pip3 install Pillow

echo "=============== Successfully Installed zephyr deps ============"

#!/bin/sh -e
echo "==================== Installing zephyr dependencies ==================="
apt-get install git make gcc g++ python3-ply python3-yaml doxygen device-tree-compiler qemu
apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib g++-multilib build-essential chrpath socat libsdl1.2-dev xterm libreadline-dev makeself p7zip-full cpio gperf
apt-get install python3-pip
apt-get install gcc-6-multilib gcovr valgrind ninja-build lcov

# for net-tools
apt-get install libglib2.0-dev libpcap-dev
wget -q https://raw.githubusercontent.com/zephyrproject-rtos/zephyr/master/scripts/requirements.txt
pip3 install -r requirements.txt
pip3 install awscli west PyGithub junitparser

CCACHE_VERSION="3.4.2"
wget https://www.samba.org/ftp/ccache/ccache-${CCACHE_VERSION}.tar.bz2
tar xvf ccache-${CCACHE_VERSION}.tar.bz2
cd ccache-${CCACHE_VERSION}
./configure
make
make install
ccache -V
cd ..
rm -rf ccache-${CCACHE_VERSION} ccache-${CCACHE_VERSION}.tar.bz2


CMAKE_VERSION=3.8.2
wget -q https://cmake.org/files/v3.8/cmake-${CMAKE_VERSION}-Linux-x86_64.tar.gz
tar xf cmake-${CMAKE_VERSION}-Linux-x86_64.tar.gz
cp -a cmake-${CMAKE_VERSION}-Linux-x86_64/bin/* /usr/local/bin/
cp -a cmake-${CMAKE_VERSION}-Linux-x86_64/share/* /usr/local/share/
rm -rf cmake-${CMAKE_VERSION}-Linux-x86_64
cmake -version
rm -f cmake-${CMAKE_VERSION}-Linux-x86_64.tar.gz
rm -f clang+llvm-3.9.0-x86_64-linux-gnu-ubuntu-16.04.tar.xz

cd /opt
git clone https://github.com/nexB/scancode-toolkit.git
cd scancode-toolkit
./configure

echo "=============== Successfully Installed zephyr deps ============"

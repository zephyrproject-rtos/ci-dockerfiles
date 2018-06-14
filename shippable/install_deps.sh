#!/bin/sh -e
echo "==================== Installing zephyr dependencies ==================="
apt-get install git make gcc g++ python3-ply python3-yaml doxygen device-tree-compiler qemu
apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib g++-multilib build-essential chrpath socat libsdl1.2-dev xterm libreadline-dev makeself p7zip-full cpio gperf
apt-get install python3-pip
apt-get install gcc-6-multilib gcovr valgrind ninja-build lcov

# for net-tools
apt-get install libglib2.0-dev libpcap-dev
pip3 install awscli breathe==4.9.1 sphinx==1.7.5 docutils==0.14 sphinx_rtd_theme junit2html
pip3 install pyelftools==0.24 pykwalify sh gitlint==0.9.0 pyserial

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


CMAKE_VERSION=3.9.1
wget -q https://cmake.org/files/v3.9/cmake-${CMAKE_VERSION}-Linux-x86_64.tar.gz
tar xf cmake-${CMAKE_VERSION}-Linux-x86_64.tar.gz
cp -a cmake-${CMAKE_VERSION}-Linux-x86_64/bin/* /usr/local/bin/
cp -a cmake-${CMAKE_VERSION}-Linux-x86_64/share/* /usr/local/share/
rm -rf cmake-${CMAKE_VERSION}-Linux-x86_64
cmake -version

echo "=============== Successfully Installed zephyr deps ============"

#!/bin/bash -e

echo "================= Adding some global settings =================="
mkdir -p "$HOME/.ssh/"
mv /shippable/config "$HOME/.ssh/"
mv /shippable/90forceyes /etc/apt/apt.conf.d/
touch "$HOME/.ssh/known_hosts"
mkdir -p /etc/drydock

echo "========================= Clean apt-get ========================"
apt-get clean
mv /var/lib/apt/lists/* /tmp
mkdir -p /var/lib/apt/lists/partial
apt-get clean
apt-get update
echo "======================== Cleaned apt-get ======================="

echo "================= Installing basic packages ===================="
apt-get update && apt-get install -y \
sudo \
software-properties-common \
wget \
curl \
openssh-client \
ftp \
gettext \
smbclient

echo "================= Installing Python packages =================="
apt-get install -q -y \
python-pip=9.0* \
software-properties-common=0.96* \
python-dev=2.7*

pip install -q virtualenv==16.5.0
pip install -q pyOpenSSL==19.0.0

export JQ_VERSION=1.5*
echo "================= Adding JQ $JQ_VERSION ========================="
apt-get install -y -q jq="$JQ_VERSION"

echo "================= Installing CLIs packages ======================"

export GIT_VERSION=1:2.*
echo "================= Installing Git $GIT_VERSION ===================="
add-apt-repository ppa:git-core/ppa -y
apt-get update -qq
apt-get install -y -q git="$GIT_VERSION"

export AWS_VERSION=1.16.192
echo "================= Adding awscli $AWS_VERSION ===================="
sudo pip install awscli=="$AWS_VERSION"

export AWSEBCLI_VERSION=3.15.2
echo "================= Adding awsebcli $AWSEBCLI_VERSION =============="
sudo pip install awsebcli=="$AWSEBCLI_VERSION"

GCC_VERSION=9
GCC_ALT_PRIO=50
echo "======================= Installing gcc ${GCC_VERSION} ======================"
add-apt-repository ppa:ubuntu-toolchain-r/test
apt-get update
apt-get install \
	gcc-${GCC_VERSION} \
	g++-${GCC_VERSION} \
	gcc-${GCC_VERSION}-multilib \
	g++-${GCC_VERSION}-multilib
update-alternatives \
	--install /usr/bin/gcc gcc /usr/bin/gcc-${GCC_VERSION} ${GCC_ALT_PRIO} \
	--slave /usr/bin/g++ g++ /usr/bin/g++-${GCC_VERSION}
update-alternatives \
	--install /usr/bin/gcov gcov /usr/bin/gcov-${GCC_VERSION} ${GCC_ALT_PRIO}
gcc --version
echo "================== Successfully Installed gcc ${GCC_VERSION} ==============="

CLANG_VERSION=10.0.0
echo "==================== Installing clang $CLANG_VERSION ==============="
wget -nv https://github.com/llvm/llvm-project/releases/download/llvmorg-"$CLANG_VERSION"/clang+llvm-"$CLANG_VERSION"-x86_64-linux-gnu-ubuntu-18.04.tar.xz
tar xf clang+llvm-"$CLANG_VERSION"-x86_64-linux-gnu-ubuntu-18.04.tar.xz
cd clang+llvm-"$CLANG_VERSION"-x86_64-linux-gnu-ubuntu-18.04
cp -R * /usr/local/
cd ../
clang --version
rm clang+llvm-"$CLANG_VERSION"-x86_64-linux-gnu-ubuntu-18.04.tar.xz
echo "============= Successfully Installed clang $CLANG_VERSION ==========="

echo "=================== Install packages for cpp ======================"

apt-get install && apt-get install -y \
  autoconf \
  automake \
  ccache \
  libssl-dev

echo "==================== Installing zephyr dependencies ==================="
apt-get install -y \
	git\
	make\
	gcc\
	g++\
	python3-ply \
	python3-yaml \
	doxygen \
	device-tree-compiler \
	qemu \
	gawk \
	wget \
	git-core \
	diffstat \
	unzip \
	texinfo \
	gcc-multilib \
	g++-multilib \
	build-essential \
	chrpath \
	socat \
	libsdl1.2-dev \
	libsdl2-dev \
	xterm \
	libreadline-dev \
	makeself \
	parallel \
	p7zip-full \
	cpio \
	gperf \
	python3-pip \
	gcovr \
	valgrind \
	ninja-build \
	lcov \
	libglib2.0-dev \
	libpcap-dev \
	locales

pip3 install -r https://raw.githubusercontent.com/zephyrproject-rtos/zephyr/master/scripts/requirements.txt
pip3 install awscli PyGithub junitparser pylint

# EDTT requirements
pip3 install -q statistics numpy

# mcuboot requirements

pip3 install -r https://raw.githubusercontent.com/JuulLabs-OSS/mcuboot/master/scripts/requirements.txt


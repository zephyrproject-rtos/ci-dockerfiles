#!/bin/bash -e

echo "========================= Clean apt-get ========================"
apt-get clean
mv /var/lib/apt/lists/* /tmp
mkdir -p /var/lib/apt/lists/partial
apt-get clean
apt-get update
echo "======================== Cleaned apt-get ======================"
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
	p7zip-full \
	cpio \
	gperf \
	python3-pip \
	gcc-6-multilib \
	gcovr \
	valgrind \
	ninja-build \
	lcov \
	libglib2.0-dev \
	libpcap-dev

pip3 install -r https://raw.githubusercontent.com/zephyrproject-rtos/zephyr/master/scripts/requirements.txt
pip3 install awscli PyGithub junitparser pylint


# mcuboot requirements

pip3 install -r https://raw.githubusercontent.com/JuulLabs-OSS/mcuboot/master/scripts/requirements.txt

add-apt-repository ppa:ubuntu-toolchain-r/test
wget -O - http://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
apt-add-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-3.9 main"
apt-get update
apt-get install gcc-6 g++-6 clang-3.9 lldb-3.9
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 50 --slave /usr/bin/g++ g++ /usr/bin/g++-6
update-alternatives --install /usr/bin/gcov gcov /usr/bin/gcov-6 50
gcc --version



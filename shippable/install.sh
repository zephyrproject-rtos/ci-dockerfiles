#!/bin/bash -e

echo "========================= Clean apt-get ========================"
apt-get clean
mv /var/lib/apt/lists/* /tmp
mkdir -p /var/lib/apt/lists/partial
apt-get clean
apt-get update
echo "======================== Cleaned apt-get ======================"

add-apt-repository ppa:ubuntu-toolchain-r/test
wget -O - http://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
apt-add-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-3.9 main"
apt-get update
apt-get install gcc-6 g++-6 clang-3.9 lldb-3.9
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 50 --slave /usr/bin/g++ g++ /usr/bin/g++-6
update-alternatives --install /usr/bin/gcov gcov /usr/bin/gcov-6 50
gcc --version



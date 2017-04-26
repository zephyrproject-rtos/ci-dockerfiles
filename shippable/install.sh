#!/bin/bash -e

echo "========================= Clean apt-get ========================"
apt-get clean
mv /var/lib/apt/lists/* /tmp
mkdir -p /var/lib/apt/lists/partial
apt-get clean
apt-get update
echo "======================== Cleaned apt-get ======================"

echo "======================= Installing gcc 6 ======================"
add-apt-repository ppa:ubuntu-toolchain-r/test
apt-get update
apt-get install gcc-6 g++-6
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 50 --slave /usr/bin/g++ g++ /usr/bin/g++-6
update-alternatives --install /usr/bin/gcov gcov /usr/bin/gcov-6 50
gcc --version
echo "================== Successfully Installed gcc 6 ==============="

echo "==================== Installing clang 3.9.0 ==================="
wget -nv http://llvm.org/releases/3.9.0/clang+llvm-3.9.0-x86_64-linux-gnu-ubuntu-16.04.tar.xz
tar xf clang+llvm-3.9.0-x86_64-linux-gnu-ubuntu-16.04.tar.xz
cd clang+llvm-3.9.0-x86_64-linux-gnu-ubuntu-16.04
cp -R * /usr/local/
cd ../
clang --version
echo "=============== Successfully Installed clang 3.9.0 ============"

echo "==================== Installing zephyr dependencies ==================="
apt-get install git make gcc g++ python3-ply python3-yaml python-yaml doxygen

wget https://github.com/zephyrproject-rtos/meta-zephyr-sdk/releases/download/0.9/zephyr-sdk-0.9-setup.run
chmod +x zephyr-sdk-0.9-setup.run
./zephyr-sdk-0.9-setup.run --quiet -- -d /opt/sdk/zephyr-sdk-0.9
rm zephyr-sdk-0.9-setup.run
pip install awscli sphinx breathe sphinx_rtd_theme
echo "=============== Successfully Installed zephyr deps ============"

wget https://launchpad.net/ubuntu/+archive/primary/+files/ccache_3.3.3-1_amd64.deb
dpkg -i ccache_3.3.3-1_amd64.deb


git clone https://github.com/zephyriot/gitlint.git
cd gitlint
python setup.py install

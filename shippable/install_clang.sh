#!/bin/bash -e

echo "==================== Installing clang 3.9.0 ==================="
wget -nv http://llvm.org/releases/3.9.0/clang+llvm-3.9.0-x86_64-linux-gnu-ubuntu-16.04.tar.xz
tar xf clang+llvm-3.9.0-x86_64-linux-gnu-ubuntu-16.04.tar.xz
cd clang+llvm-3.9.0-x86_64-linux-gnu-ubuntu-16.04
cp -R * /usr/local/
cd ../
clang --version
echo "=============== Successfully Installed clang 3.9.0 ============"

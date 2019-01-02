
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


CMAKE_VERSION=3.13.1
wget -q https://github.com/Kitware/CMake/releases/download/v${CMAKE_VERSION}/cmake-${CMAKE_VERSION}-Linux-x86_64.tar.gz
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

./scancode --copyright --license --license-diag --info --classify --summary --json scancode.js README.rst

chmod -R a+rw /opt/scancode-toolkit/

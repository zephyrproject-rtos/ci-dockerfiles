

wget -q https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-rm/7-2018q2/gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2
tar xf gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2
rm -f gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2
mkdir /opt/toolchain
mv gcc-arm-none-eabi-7-2018-q2-update /opt/toolchain/arm-none-eabi


# Install gnu-mcu-eclipse
export ECLIPSE_GCC_ARM_VER=8.2.1-1.4
export ECLIPSE_GCC_ARM_BUILD=20190214-0604

mkdir -p /opt/toolchain

wget -O gcc.tgz -q https://github.com/gnu-mcu-eclipse/arm-none-eabi-gcc/releases/download/v$ECLIPSE_GCC_ARM_VER/gnu-mcu-eclipse-arm-none-eabi-gcc-$ECLIPSE_GCC_ARM_VER-$ECLIPSE_GCC_ARM_BUILD-centos64.tgz
tar xf gcc.tgz
rm -f gcc.tgz
mv gnu-mcu-eclipse/arm-none-eabi-gcc/$ECLIPSE_GCC_ARM_VER-$ECLIPSE_GCC_ARM_BUILD/ /opt/toolchain/gnu-mcu-eclipse

# Install the official GNU ARM Embedded
wget -q https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-rm/7-2018q2/gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2
tar xf gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2
rm -f gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2
mv gcc-arm-none-eabi-7-2018-q2-update /opt/toolchain/arm-none-eabi

mkdir -p /opt/toolchain/esp32
cd /opt/toolchain/esp32
wget https://dl.espressif.com/dl/xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz
tar -xzf xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz
rm xtensa-esp32-elf-linux64-1.22.0-80-g6c4433a-5.2.0.tar.gz

mkdir -p /opt/toolchain

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



wget -q https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-rm/7-2018q2/gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2
tar xf gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2
rm -f gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2
mkdir /opt/toolchain
mv gcc-arm-none-eabi-7-2018-q2-update /opt/toolchain/arm-none-eabi

wget -q http://registrationcenter-download.intel.com/akdlm/irc_nas/9572/issm-toolchain-linux-2017-02-07.tar.gz
tar xf issm-toolchain-linux-2017-02-07.tar.gz
rm issm-toolchain-linux-2017-02-07.tar.gz
mv issm-toolchain-linux-2017-02-07 /opt/toolchain/issm

#wget -q https://github.com/foss-for-synopsys-dwc-arc-processors/toolchain/releases/download/arc-2016.09-release/arc_gnu_2016.09_prebuilt_elf32_le_linux_install.tar.gz
#tar xf arc_gnu_2016.09_prebuilt_elf32_le_linux_install.tar.gz
#rm arc_gnu_2016.09_prebuilt_elf32_le_linux_install.tar.gz
#mv arc_gnu_2016.09_prebuilt_elf32_le_linux_install /opt/toolchain/arc-elf32




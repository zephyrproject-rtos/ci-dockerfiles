#!/bin/sh -e
echo "==================== Installing zephyr dependencies ==================="
apt-get install git make gcc g++ python3-ply python3-yaml python-yaml doxygen device-tree-compiler qemu
pip install awscli breathe==4.6.0 sphinx==1.5.5 sphinx_rtd_theme junit2html


wget https://launchpad.net/ubuntu/+archive/primary/+files/ccache_3.3.3-1_amd64.deb
dpkg -i ccache_3.3.3-1_amd64.deb


git clone https://github.com/zephyriot/gitlint.git
cd gitlint
python setup.py install
echo "=============== Successfully Installed zephyr deps ============"

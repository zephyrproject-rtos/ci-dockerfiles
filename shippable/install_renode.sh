#!/bin/sh

VERSION=1.6.2

apt-get install --no-install-recommends -y gnupg ca-certificates apt-transport-https
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-xenial main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
apt-get install --no-install-recommends -y gtk-sharp2 libgtk2.0-0 mono-complete

wget -O renode.deb https://github.com/renode/renode/releases/download/v${VERSION}/renode_${VERSION}_amd64.deb
apt install -y ./renode.deb
rm renode.deb

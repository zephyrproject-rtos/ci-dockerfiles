FROM ubuntu:xenial

COPY setup-sshd /usr/sbin/setup-sshd

RUN dpkg --add-architecture i386 \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends software-properties-common \
 && add-apt-repository -y ppa:git-core/ppa \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
 acpica-tools \
 autoconf \
 automake \
 bc \
 bison \
 build-essential \
 ccache \
 cmake \
 curl \
 debhelper \
 debian-archive-keyring \
 debian-keyring \
 device-tree-compiler \
 doxygen \
 fakeroot \
 flex \
 g++ \
 g++-multilib \
 gcc \
 gcc-arm-none-eabi \
 gdisk \
 genisoimage \
 git \
 gperf \
 kernel-wedge \
 kpartx \
 lcov \
 less \
 lib32ncurses5 \
 libc6-dev-i386 \
 libstdc++6:i386 \
 libtool \
 libxml2-utils \
 lsb-release \
 make \
 openjdk-8-jdk \
 openssh-server \
 python-mako \
 python-networkx \
 python-requests \
 python3-ply \
 python3-yaml \
 qemu-user-static \
 rsync \
 scons \
 sudo \
 time \
 u-boot-tools \
 uuid-dev \
 wget \
 xml-twig-tools \
 zip \
 zlib1g-dev:i386 \
 zsync \
 && apt-get clean \
 && rm -rf \
 /var/lib/apt/lists/* \
 /tmp/* \
 /var/tmp/*

RUN useradd -m -G plugdev buildslave \
 && echo 'buildslave ALL = NOPASSWD: ALL' > /etc/sudoers.d/jenkins \
 && chmod 0440 /etc/sudoers.d/jenkins \
 && mkdir -p /var/run/sshd

EXPOSE 22
ENTRYPOINT ["/usr/sbin/setup-sshd"]

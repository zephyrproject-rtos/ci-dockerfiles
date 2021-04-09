FROM ubuntu:18.04

ADD . /scripts

RUN /scripts/install.sh && rm -rf /tmp && mkdir /tmp && chmod 1777 /tmp

RUN useradd -m -G plugdev buildslave \
 && echo 'buildslave ALL = NOPASSWD: ALL' > /etc/sudoers.d/buildslave \
 && chmod 0440 /etc/sudoers.d/buildslave

RUN /scripts/install_sdk.sh
RUN /scripts/install_vendor_toolchains.sh
RUN /scripts/install_bsim.sh
RUN /scripts/install_renode.sh
RUN /scripts/install_source.sh

# Set the locale
RUN locale-gen en_US.UTF-8
ENV BASH_ENV "/etc/drydock/.env"
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

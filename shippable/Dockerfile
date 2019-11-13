FROM ubuntu:16.04

ADD . /shippable

RUN /shippable/install.sh && rm -rf /tmp && mkdir /tmp && chmod 1777 /tmp
RUN /shippable/install_sdk.sh
RUN /shippable/install_vendor_toolchains.sh
RUN /shippable/install_bsim.sh
RUN /shippable/install_renode.sh
RUN /shippable/install_source.sh

RUN useradd -m -G plugdev buildslave \
 && echo 'buildslave ALL = NOPASSWD: ALL' > /etc/sudoers.d/buildslave \
 && chmod 0440 /etc/sudoers.d/buildslave

# Set the locale
RUN locale-gen en_US.UTF-8
ENV BASH_ENV "/etc/drydock/.env"
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

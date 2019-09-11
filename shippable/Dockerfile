FROM drydock/u16cppall:v5.5.1

ADD . /shippable

RUN /shippable/install.sh && \
/shippable/install_sdk.sh && \
/shippable/install_vendor_toolchains.sh && \
/shippable/install_bsim.sh && \
/shippable/install_renode.sh && \
/shippable/install_source.sh && \
\
useradd -m -G plugdev buildslave \
 && echo 'buildslave ALL = NOPASSWD: ALL' > /etc/sudoers.d/buildslave \
 && chmod 0440 /etc/sudoers.d/buildslave && \
\
# Set the locale
locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

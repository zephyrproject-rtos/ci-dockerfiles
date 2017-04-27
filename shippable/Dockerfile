FROM drydock/u16cppall:v5.5.1

ADD . /shippable

RUN /shippable/install.sh
RUN /shippable/install_clang.sh
RUN /shippable/install_sdk.sh
RUN /shippable/install_deps.sh

RUN useradd -m -G plugdev buildslave \
 && echo 'buildslave ALL = NOPASSWD: ALL' > /etc/sudoers.d/buildslave \
 && chmod 0440 /etc/sudoers.d/buildslave

# Set the locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

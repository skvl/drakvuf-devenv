FROM ubuntu:18.04 as base

RUN apt-get update && apt-get install -y --no-install-recommends \
    autoconf autoconf-archive automake build-essential check clang cmake git \
    libglib2.0-dev libjson-c-dev libxen-dev libtool sudo uuid-dev \
    && apt-get -y autoremove

RUN useradd -G sudo -ms /bin/bash developer && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER developer
WORKDIR /home/developer/src
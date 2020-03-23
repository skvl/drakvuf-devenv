FROM ubuntu:18.04 as base

RUN apt-get update && apt-get install -y --no-install-recommends \
    autoconf autoconf-archive automake bash-completion bear build-essential \
    check clang cmake cmake-curses-gui git \
    libglib2.0-dev libjson-c-dev libxen-dev libtool sudo uuid-dev \
    && apt-get -y autoremove

ARG UNAME=developer
ARG UID=1000
ARG GID=1000

RUN groupadd -g ${GID} -o ${UNAME} && \
    useradd -u $UID -g $GID -G sudo -ms /bin/bash ${UNAME} && \
    echo "${UNAME} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER ${UNAME}
WORKDIR /home/${UNAME}/src

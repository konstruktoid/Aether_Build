FROM ubuntu:trusty

ENV DL 'https://github.com/nehbit/aether-public/releases/download/v1.2.3-LNX-TAR/aether_1.2.3.tar.bz2'
ENV USER aether
ENV HOME /home/$USER

RUN \
    apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install bzip2 ca-certificates libc6 libgl1-mesa-dev wget --no-install-recommends

RUN \
    useradd --create-home --home-dir $HOME $USER && \
    mkdir -p $HOME/.config/autostart && \
    chown -R $USER:$USER $HOME

RUN \
    wget -O /tmp/aether.tar.bz2 $DL && \
    tar -xjvf /tmp/aether.tar.bz2 -C /opt && \
    rm /tmp/aether.tar.bz2

RUN \
    apt-get autoclean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/* \
    /usr/share/doc /usr/share/doc-base \
    /usr/share/man /usr/share/locale /usr/share/zoneinfo

WORKDIR $HOME
USER aether

CMD ["/opt/aether/Aether"]

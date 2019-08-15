FROM yobasystems/alpine:3.10.1-aarch64

ARG BUILD_DATE
ARG VCS_REF

LABEL maintainer="Dominic Taylor <dominic@yobasystems.co.uk>" \
    architecture="arm64v8/aarch64" \
    alpine-version="3.10.1" \
    syncthing-version="1.2.1" \
    build="15-Aug-2019" \
    org.opencontainers.image.title="alpine-syncthing" \
    org.opencontainers.image.description="Syncthing Docker image running on Alpine Linux" \
    org.opencontainers.image.authors="Dominic Taylor <dominic@yobasystems.co.uk>" \
    org.opencontainers.image.vendor="Yoba Systems" \
    org.opencontainers.image.version="v1.2.1" \
    org.opencontainers.image.url="https://hub.docker.com/r/yobasystems/alpine-syncthing/" \
    org.opencontainers.image.source="https://github.com/yobasystems/alpine-syncthing" \
    org.opencontainers.image.revision=$VCS_REF \
    org.opencontainers.image.created=$BUILD_DATE

ENV SYNCTHING_VERSION=1.2.1 \
    SYNCTHING_USERID=1027 \
    GOSU_VERSION=1.11 \
    STNOUPGRADE=true

RUN cd /tmp &&\
    apk -U add openssl gnupg && \
    echo "Getting GPG keys for Syncthing" && \
    gpg-agent --daemon && \
    gpg --quiet --keyserver hkps://keyserver.pgp.com  --recv-keys 49F5AEC0BCE524C7 D26E6ED000654A3E || \
    gpg --quiet --keyserver hkps://ha.pool.sks-keyservers.net  --recv-keys 49F5AEC0BCE524C7 D26E6ED000654A3E || \
    gpg --quiet --keyserver hkp://p80.pool.sks-keyservers.net:80  --recv-keys 49F5AEC0BCE524C7 D26E6ED000654A3E && \
    echo "Getting GPG keys for gosu" && \
    gpg --quiet --keyserver hkps://keyserver.pgp.com  --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 || \
    gpg --quiet --keyserver hkps://ha.pool.sks-keyservers.net  --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 || \
    gpg --quiet --keyserver hkp://p80.pool.sks-keyservers.net:80  --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && \
    echo "Getting gosu and its signature" && \
    wget -q https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-arm64.asc && \
    wget -q https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-arm64 &&\
    echo "Checking gosu signature" && \
    gpg --quiet --verify gosu-arm64.asc && \
    echo "Installing gosu" && \
    chmod +x gosu-arm64 && mv gosu-arm64 /bin/gosu && \
    echo "Getting Syncthing and its signature" && \
    wget -q https://github.com/syncthing/syncthing/releases/download/v${SYNCTHING_VERSION}/sha1sum.txt.asc && \
    wget -q https://github.com/syncthing/syncthing/releases/download/v${SYNCTHING_VERSION}/syncthing-linux-arm64-v${SYNCTHING_VERSION}.tar.gz && \
    echo "Checking gosu sha1 sum signature" && \
    gpg --quiet --verify sha1sum.txt.asc && \
    echo "Checking gosu sha1 checksum" && \
    grep syncthing-linux-arm64-v${SYNCTHING_VERSION}.tar.gz sha1sum.txt.asc | sha1sum -c - && \
    echo "Installing Syncthing" && \
    tar -xzf syncthing-linux-arm64-v${SYNCTHING_VERSION}.tar.gz syncthing-linux-arm64-v${SYNCTHING_VERSION}/syncthing && \
    mv syncthing-linux-arm64-v${SYNCTHING_VERSION}/syncthing /bin/ && \
    echo "Cleaning up" && \
    rm -rf /tmp/* && \
    rm -rf /root/* && \
    apk del gnupg openssl && \
    rm -rf /var/lib/apt/lists/*

ADD files/start.sh /srv/start.sh

RUN chmod +x /srv/start.sh && mkdir -p /srv/config /srv/data

EXPOSE 8384 22000 21027/udp

VOLUME ["/srv/data", "/srv/config"]

ENTRYPOINT ["/srv/start.sh"]

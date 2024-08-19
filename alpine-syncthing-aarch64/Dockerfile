FROM yobasystems/alpine:3.20.2-aarch64

ARG BUILD_DATE
ARG VCS_REF

LABEL maintainer="Dominic Taylor <dominic@yoba.systems>" \
    architecture="arm64v8/aarch64" \
    alpine-version="3.20.2" \
    syncthing-version="1.27.10" \
    build="19-Aug-2024" \
    org.opencontainers.image.title="alpine-syncthing" \
    org.opencontainers.image.description="Syncthing container image running on Alpine Linux" \
    org.opencontainers.image.authors="Dominic Taylor <dominic@yoba.systems>" \
    org.opencontainers.image.vendor="Yoba Systems" \
    org.opencontainers.image.version="1.27.10" \
    org.opencontainers.image.url="https://hub.docker.com/r/yobasystems/alpine-syncthing/" \
    org.opencontainers.image.source="https://github.com/yobasystems/alpine-syncthing" \
    org.opencontainers.image.base.name="docker.io/yobasystems/alpine:3.20.2" \
    org.opencontainers.image.revision=$VCS_REF \
    org.opencontainers.image.created=$BUILD_DATE

ENV SYNCTHING_VERSION=1.27.10 \
    SYNCTHING_USERID=1027 \
    GOSU_VERSION=1.17 \
    STNOUPGRADE=true

RUN cd /tmp &&\
    apk -U add openssl gnupg curl && \
    echo "Getting GPG keys for Syncthing" && \
    gpg-agent --daemon && \
    curl -fSL https://syncthing.net/release-key.txt | gpg --import && \
    echo "Getting GPG keys for gosu" && \
    gpg --keyserver hkps://keys.openpgp.org  --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && \
    echo "Getting gosu and its signature" && \
    wget -q https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-arm64.asc && \
    wget -q https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-arm64 && \
    echo "Checking gosu signature" && \
    gpg --verify gosu-arm64.asc && \
    echo "Installing gosu" && \
    chmod +x gosu-arm64 && mv gosu-arm64 /bin/gosu && \
    echo "Getting Syncthing and its signature" && \
    wget -q https://github.com/syncthing/syncthing/releases/download/v${SYNCTHING_VERSION}/sha1sum.txt.asc && \
    wget -q https://github.com/syncthing/syncthing/releases/download/v${SYNCTHING_VERSION}/syncthing-linux-arm64-v${SYNCTHING_VERSION}.tar.gz && \
    echo "Checking gosu sha1 sum signature" && \
    gpg --verify sha1sum.txt.asc && \
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

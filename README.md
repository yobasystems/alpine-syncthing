# Syncthing Docker image running on Alpine Linux

[![Docker Automated build](https://img.shields.io/docker/automated/yobasystems/alpine-syncthing.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/yobasystems/alpine-syncthing/)
[![Docker Pulls](https://img.shields.io/docker/pulls/yobasystems/alpine-syncthing.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/yobasystems/alpine-syncthing/)
[![Docker Stars](https://img.shields.io/docker/stars/yobasystems/alpine-syncthing.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/yobasystems/alpine-syncthing/)

[![Alpine Version](https://img.shields.io/badge/Alpine%20version-v3.11.2-green.svg?style=for-the-badge)](https://alpinelinux.org/)
[![Docker Version](https://img.shields.io/badge/Syncthing%20version-v1.3.3-green.svg?style=for-the-badge)](https://www.docker.com/)


This Docker image [(yobasystems/alpine-syncthing)](https://hub.docker.com/r/yobasystems/alpine-syncthing/) is based on the minimal [Alpine Linux](https://alpinelinux.org/) with version 1.3.3 of [Syncthing](https://syncthing.net/)

##### Alpine Version 3.11.2 (Released December 24, 2019)
##### Syncthing Version 1.3.3

----

## What is Alpine Linux?
Alpine Linux is a Linux distribution built around musl libc and BusyBox. The image is only 5 MB in size and has access to a package repository that is much more complete than other BusyBox based images. This makes Alpine Linux a great image base for utilities and even production applications. Read more about Alpine Linux here and you can see how their mantra fits in right at home with Docker images.

## What is Syncthing?

## Features

* Minimal size only 8.16 MB and only 4 layers
* Memory usage is minimal on a simple install

## Architectures

* ```:amd64```, ```:x86_64``` - 64 bit Intel/AMD (x86_64/amd64)
* ```:arm64v8```, ```:aarch64``` - 64 bit ARM (ARMv8/aarch64)
* ```:arm32v7```, ```:armhf``` - 32 bit ARM (ARMv7/armhf)

## Tags

* ```:latest``` latest branch based (Automatic Architecture Selection)
* ```:master``` master branch usually inline with latest
* ```:1.3.3```, ```:1.3.3-arch``` version tag (Automatic Architecture Selection)
* ```:amd64```, ```:x86_64``` amd64 based on latest tag but amd64 architecture
* ```:aarch64```, ```:arm64v8``` Armv8 based on latest tag but arm64 architecture
* ```:armhf```, ```:arm32v7``` Armv7 based on latest tag but arm architecture

## Layers & Sizes

![Version](https://img.shields.io/badge/version-amd64-blue.svg?style=for-the-badge)
![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/yobasystems/alpine-syncthing/amd64.svg?style=for-the-badge)
![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/yobasystems/alpine-syncthing/amd64.svg?style=for-the-badge)

![Version](https://img.shields.io/badge/version-aarch64-blue.svg?style=for-the-badge)
![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/yobasystems/alpine-syncthing/aarch64.svg?style=for-the-badge)
![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/yobasystems/alpine-syncthing/aarch64.svg?style=for-the-badge)

![Version](https://img.shields.io/badge/version-armhf-blue.svg?style=for-the-badge)
![MicroBadger Layers (tag)](https://img.shields.io/microbadger/layers/yobasystems/alpine-syncthing/armhf.svg?style=for-the-badge)
![MicroBadger Size (tag)](https://img.shields.io/microbadger/image-size/yobasystems/alpine-syncthing/armhf.svg?style=for-the-badge)

## Creating an instance

To use this image include `FROM yobasystems/alpine-syncthing` at the top of your Dockerfile.

```bash
docker run -d --restart=always --name alpine-syncthing -v /srv/sync:/srv/data -v /srv/syncthing:/srv/config -p 22000:22000  -p 21025:21025/udp -p 8384:8384 yobasystems/alpine-syncthing
```

## Docker Compose example:

```yalm
alpine-syncthing:
  image: yobasystems/alpine-syncthing
  expose:
    - "8384"
    - "22000"
    - "21027/udp"
  volumes:
    - /srv/sync:/srv/data
    - /srv/syncthing:/srv/config
  restart: always
```

## Source Repository

* [Bitbucket - yobasystems/alpine-syncthing](https://bitbucket.org/yobasystems/alpine-syncthing/)

* [Github - yobasystems/alpine-syncthing](https://github.com/yobasystems/alpine-syncthing)

## Links

* [Yoba Systems](https://www.yobasystems.co.uk/)

* [Dockerhub - yobasystems](https://hub.docker.com/u/yobasystems/)

* [Quay.io - yobasystems](https://quay.io/organization/yobasystems)

## Donation

```
BITCOIN: bc1ql0heex0jxh0yj5cucc83a3x6c6rxuq6x9zk07g
ETHEREUM: 0x6b707391c60d50E4E414a143446C0b8eF9A2d1c4
STELLAR: GAREZZW36KF2IT2EJW6LG5HH4XT3QIMWCHMCGEBC6V3AP3EFJCORRZIY
XRP: rsaEp3bh3LrjVHqrcyLgbUb6QUQbBogzR3
ZCASH: t1MuAY2vR17vDK3BgCAtf8ZdXsCiBw3zkU6
```

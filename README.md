# Syncthing Docker image running on Alpine Linux

[![Docker Automated build](https://img.shields.io/docker/automated/yobasystems/alpine-syncthing.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/yobasystems/alpine-syncthing/)
[![Docker Pulls](https://img.shields.io/docker/pulls/yobasystems/alpine-syncthing.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/yobasystems/alpine-syncthing/)
[![Docker Stars](https://img.shields.io/docker/stars/yobasystems/alpine-syncthing.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/yobasystems/alpine-syncthing/)

[![Alpine Version](https://img.shields.io/badge/Alpine%20version-v3.14.0-green.svg?style=for-the-badge)](https://alpinelinux.org/)
[![Docker Version](https://img.shields.io/badge/Syncthing%20version-v1.17.0-green.svg?style=for-the-badge)](https://www.docker.com/)


This Docker image [(yobasystems/alpine-syncthing)](https://hub.docker.com/r/yobasystems/alpine-syncthing/) is based on the minimal [Alpine Linux](https://alpinelinux.org/) with version 1.17.0 of [Syncthing](https://syncthing.net/)

##### Alpine Version 3.14.0 (Released 2021-06-15)
##### Syncthing Version 1.17.0

----

## What is Alpine Linux?
Alpine Linux is a Linux distribution built around musl libc and BusyBox. The image is only 5 MB in size and has access to a package repository that is much more complete than other BusyBox based images. This makes Alpine Linux a great image base for utilities and even production applications. Read more about Alpine Linux here and you can see how their mantra fits in right at home with Docker images.

## What is Syncthing?
Syncthing is a continuous file synchronization program. It synchronizes files between two or more computers in real time, safely protected from prying eyes. Your data is your data alone and you deserve to choose where it is stored, whether it is shared with some third party, and how it's transmitted over the internet.
## Features

* Minimal size only, minimal layers
* Memory usage is minimal on a simple install.

## Architectures

* ```:amd64```, ```:x86_64``` - 64 bit Intel/AMD (x86_64/amd64)
* ```:arm64v8```, ```:aarch64``` - 64 bit ARM (ARMv8/aarch64)
* ```:arm32v7```, ```:armhf``` - 32 bit ARM (ARMv7/armhf)

## Tags

* ```:latest``` latest branch based (Automatic Architecture Selection)
* ```:master``` master branch usually inline with latest
* ```:1.17.0```, ```:1.17.0-arch``` version tag (Automatic Architecture Selection)
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


## Volume structure

* `/srv/data`: Syncthing files
* `/srv/config`: Syncthing config
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

* [Github - yobasystems/alpine-syncthing](https://github.com/yobasystems/alpine-syncthing)

* [Gitlab - yobasystems/alpine-syncthing](https://gitlab.com/yobasystems/alpine-syncthing)

* [Bitbucket - yobasystems/alpine-syncthing](https://bitbucket.org/yobasystems/alpine-syncthing/)

## Container Registries

* [Dockerhub - yobasystems/alpine-syncthing](https://hub.docker.com/r/yobasystems/alpine-syncthing/)

* [Quay.io - yobasystems/alpine-syncthing](https://quay.io/repository/yobasystems/alpine-syncthing)

## Links

* [Yoba Systems](https://www.yobasystems.co.uk/)

* [Dockerhub - yobasystems](https://hub.docker.com/u/yobasystems/)

* [Quay.io - yobasystems](https://quay.io/organization/yobasystems)

## Donation

[![BMAC](https://img.shields.io/badge/BUY%20ME%20A%20COFFEE-£5-blue.svg?style=for-the-badge&logo=buy-me-a-coffee)](https://www.buymeacoffee.com/dominictayloruk?new=1)

[![BITCOIN](https://img.shields.io/badge/BTC-bc1ql0heex0jxh0yj5cucc83a3x6c6rxuq6x9zk07g-blue.svg?style=for-the-badge&logo=bitcoin)](bitcoin:bc1ql0heex0jxh0yj5cucc83a3x6c6rxuq6x9zk07g)

[![ETHEREUM](https://img.shields.io/badge/ETH-0x6b707391c60d50E4E414a143446C0b8eF9A2d1c4-blue.svg?style=for-the-badge&logo=ethereum)](https://etherscan.io/address/dominictaylor.eth)

[![STELLAR](https://img.shields.io/badge/XLM-GAREZZW36KF2IT2EJW6LG5HH4XT3QIMWCHMCGEBC6V3AP3EFJCORRZIY-blue.svg?style=for-the-badge&logo=stellar)](https://keybase.io/dominictayloruk)

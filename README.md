# Syncthing container image running on Alpine Linux

[![Docker Automated build](https://img.shields.io/docker/automated/yobasystems/alpine-syncthing.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/yobasystems/alpine-syncthing/)
[![Docker Pulls](https://img.shields.io/docker/pulls/yobasystems/alpine-syncthing.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/yobasystems/alpine-syncthing/)
[![Docker Stars](https://img.shields.io/docker/stars/yobasystems/alpine-syncthing.svg?style=for-the-badge&logo=docker)](https://hub.docker.com/r/yobasystems/alpine-syncthing/)

[![Alpine Version](https://img.shields.io/badge/Alpine%20version-v3.22.0-green.svg?style=for-the-badge)](https://alpinelinux.org/)
[![Docker Version](https://img.shields.io/badge/Syncthing%20version-v1.29.7-green.svg?style=for-the-badge)](https://www.docker.com/)


This container image [(yobasystems/alpine-syncthing)](https://hub.docker.com/r/yobasystems/alpine-syncthing/) is based on the minimal [Alpine Linux](https://alpinelinux.org/) with version 1.29.7 of [Syncthing](https://syncthing.net/)

### Alpine Version 3.22.0 (Released 2025-05-30)
##### Syncthing Version 1.29.7

----

## 🏔️ What is Alpine Linux?
Alpine Linux is a Linux distribution built around musl libc and BusyBox. The image is only 5 MB in size and has access to a package repository that is much more complete than other BusyBox based images. This makes Alpine Linux a great image base for utilities and even production applications. Read more about Alpine Linux here and you can see how their mantra fits in right at home with container images.

##  What is Syncthing?
Syncthing is a continuous file synchronization program. It synchronizes files between two or more computers in real time, safely protected from prying eyes. Your data is your data alone and you deserve to choose where it is stored, whether it is shared with some third party, and how it's transmitted over the internet.
## ✨ Features

* Minimal size only, minimal layers
* Memory usage is minimal on a simple install.

## 🏗️ Architectures

* ```:amd64```, ```:x86_64``` - 64 bit Intel/AMD (x86_64/amd64)
* ```:arm64v8```, ```:aarch64``` - 64 bit ARM (ARMv8/aarch64)
* ```:arm32v7```, ```:armhf``` - 32 bit ARM (ARMv7/armhf)

#### 📝 PLEASE CHECK TAGS BELOW FOR SUPPORTED ARCHITECTURES, THE ABOVE IS A LIST OF EXPLANATION

## 🏷️ Tags

* ```:latest``` latest branch based (Automatic Architecture Selection)
* ```:main``` main branch usually inline with latest
* ```:x.y.z```, ```:x.y.z-arch``` version tag (Automatic Architecture Selection)
* ```:amd64```, ```:x86_64``` amd64 based on latest tag but amd64 architecture
* ```:aarch64```, ```:arm64v8``` Armv8 based on latest tag but arm64 architecture
* ```:armhf```, ```:arm32v7``` Armv7 based on latest tag but arm architecture

## 📏 Layers & Sizes

![Version](https://img.shields.io/badge/version-amd64-blue.svg?style=for-the-badge)
![Docker Image Version (tag)](https://img.shields.io/docker/v/yobasystems/alpine-syncthing/amd64.svg?style=for-the-badge)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yobasystems/alpine-syncthing/amd64.svg?style=for-the-badge)

![Version](https://img.shields.io/badge/version-aarch64-blue.svg?style=for-the-badge)
![Docker Image Version (tag)](https://img.shields.io/docker/v/yobasystems/alpine-syncthing/aarch64.svg?style=for-the-badge)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yobasystems/alpine-syncthing/aarch64.svg?style=for-the-badge)

![Version](https://img.shields.io/badge/version-armhf-blue.svg?style=for-the-badge)
![Docker Image Version (tag)](https://img.shields.io/docker/v/yobasystems/alpine-syncthing/armhf.svg?style=for-the-badge)
![Docker Image Size (tag)](https://img.shields.io/docker/image-size/yobasystems/alpine-syncthing/armhf.svg?style=for-the-badge)


## 🚀 How to use this image
### Volume structure

* `/srv/data`: Syncthing files
* `/srv/config`: Syncthing config
### Creating an instance

To use this image include `FROM yobasystems/alpine-syncthing` at the top of your Dockerfile.

```bash
docker run -d --restart=always --name alpine-syncthing -v /srv/sync:/srv/data -v /srv/syncthing:/srv/config -p 22000:22000  -p 21025:21025/udp -p 8384:8384 yobasystems/alpine-syncthing
```

### Docker Compose example:

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

## 🔍 Image contents & Vulnerability analysis

| PACKAGE NAME          | PACKAGE VERSION | VULNERABILITIES |
|-----------------------|-----------------|-----------------|


## 📚 Source Repositories

* [Github - yobasystems/alpine-syncthing](https://github.com/yobasystems/alpine-syncthing)
* [Gitlab - yobasystems/alpine-syncthing](https://gitlab.com/yobasystems/alpine-syncthing)
* [Bitbucket - yobasystems/alpine-syncthing](https://bitbucket.org/yobasystems/alpine-syncthing/)


## 🐳 Container Registries

* [Dockerhub - yobasystems/alpine-syncthing](https://hub.docker.com/r/yobasystems/alpine-syncthing/)
* [Quay.io - yobasystems/alpine-syncthing](https://quay.io/repository/yobasystems/alpine-syncthing)
* [GHCR - yobasystems/alpine-syncthing](https://ghcr.io/yobasystems/alpine-syncthing)


## 🔗 Links

* [Yoba Systems](https://yoba.systems/)
* [Github - Yoba Systems](https://github.com/yobasystems/)
* [Dockerhub - Yoba Systems](https://hub.docker.com/u/yobasystems/)
* [Quay.io - Yoba Systems](https://quay.io/organization/yobasystems)
* [GHCR - Yoba Systems](https://ghcr.io/yobasystems)
* [Maintainer - Dominic Taylor](https://github.com/dominictayloruk)

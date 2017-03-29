# Syncthing Docker image running on Alpine Linux

[![Docker Layers](https://img.shields.io/badge/docker%20layers-4-blue.svg?maxAge=2592000?style=flat-square)](https://hub.docker.com/r/yobasystems/alpine-syncthing/) [![Docker Size](https://img.shields.io/badge/docker%20size-8.14%20MB-blue.svg?maxAge=2592000?style=flat-square)](https://hub.docker.com/r/yobasystems/alpine-syncthing/) [![Docker Stars](https://img.shields.io/docker/stars/yobasystems/alpine-syncthing.svg?maxAge=2592000?style=flat-square)](https://hub.docker.com/r/yobasystems/alpine-syncthing/) [![Docker Pulls](https://img.shields.io/docker/pulls/yobasystems/alpine-syncthing.svg?maxAge=2592000?style=flat-square)](https://hub.docker.com/r/yobasystems/alpine-syncthing/)

[![Alpine Version](https://img.shields.io/badge/alpine%20version-v3.5-green.svg?maxAge=2592000?style=flat-square)](http://alpinelinux.org/) [![Syncthing Version](https://img.shields.io/badge/syncthing%20version-v0.14.25-green.svg?maxAge=2592000?style=flat-square)](https://syncthing.net/)



This Docker image [(yobasystems/alpine-syncthing)](https://hub.docker.com/r/yobasystems/alpine-syncthing/) is based on the minimal [Alpine Linux](http://alpinelinux.org/) with version 0.14.25 of [Syncthing](https://syncthing.net/)

## Features

  * Minimal size only 8.16 MB and only 4 layers
  * Memory usage is minimal on a simple install
  * [Syncthing 0.14.25](https://syncthing.net/)
  * Armv7 (armhf) version with ```:armhf``` tag

## Tags

* ```:latest``` latest nginx & alpine
* ```:master``` master branch usually inline with latest
* ```:v0.0.0``` version number related to nginx version
* ```:armhf``` Armv7 based on latest tag but arm architecture


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

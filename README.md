# Syncthing Docker image running on Alpine Linux 3.4

[![Docker Stars](https://img.shields.io/docker/stars/yobasystems/alpine-syncthing.svg)](https://imagelayers.io/?images=yobasystems/alpine-syncthing:latest)

[![Docker Pulls](https://img.shields.io/docker/pulls/yobasystems/alpine-syncthing.svg)](https://imagelayers.io/?images=yobasystems/alpine-syncthing:latest)

[![Image Size](https://img.shields.io/imagelayers/image-size/yobasystems/alpine-syncthing/latest.svg)](https://imagelayers.io/?images=yobasystems/alpine-syncthing:latest)

[![Image Layers](https://img.shields.io/imagelayers/layers/yobasystems/alpine-syncthing/latest.svg)](https://imagelayers.io/?images=yobasystems/alpine-syncthing:latest)


[This](https://hub.docker.com/r/yobasystems/alpine-syncthing/) Docker image is based on the [Alpine Linux 3.4](http://alpinelinux.org/) with version of 0.14.6 of [Syncthing](https://syncthing.net/)

## Features

  * Minimal size: 23Mb uncompressed, and only 9 layers.
  * Memory usage is minimal on a simple install.
  * [Syncthing 0.14.6](https://syncthing.net/)


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
